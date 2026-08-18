-- Camo v2.6 - R6 + Pared/Imagen completa Proyección
-- Mejorado: copia TEXTURA COMPLETA de la pared/cuadro que tienes enfrente
-- Teclas: [E] = Muestra color puntual | [T] = CAMUFLAJE COMPLETO (proyecta pared sobre tu cuerpo)
if _G._camoV2Kill then _G._camoV2Kill() end
task.wait(0.1)

-- State
local killed     = false
local texCache   = {}
local texLoading = {}
local loadingSet = {}

_G._camoV2Kill = function() killed = true end

-- Services
local plr = game.Players.LocalPlayer
local rs  = game:GetService("ReplicatedStorage")
local as  = game:GetService("AssetService")
local uis = game:GetService("UserInputService")
local ts  = game:GetService("TweenService")

-- Módulos que ya existen en tu juego
local remotes    = rs:FindFirstChild("Remotes")
local PaintEvent = remotes and remotes:FindFirstChild("PaintEvent")
local PaintAtlas   = require(rs.Modules.PaintAtlas)
local PaintDrawing = require(rs.Modules.PaintDrawing)

-- Configuración - CALIDAD MÁXIMA para no perder detalle de ladrillos/cuadros
local RAY_DIVISOR   = 1
local RAY_LENGTH    = 800
local SURF_OFF      = 0.15

-- Detectar si eres Escondedor
local function isHider()
    return plr:GetAttribute("InRound") == true
        and plr:GetAttribute("RoundRole") == "Hider"
end

-- Caché de texturas
local function loadTex(id)
    if texCache[id] ~= nil or texLoading[id] then return end
    texLoading[id] = true
    loadingSet[id] = true
    task.spawn(function()
        local ok, img = pcall(as.CreateEditableImageAsync, as, Content.fromUri(id))
        texCache[id] = (ok and img) or false
        texLoading[id] = nil
        loadingSet[id] = nil
    end)
end

local function getTex(id)
    local v = texCache[id]
    return (v and v ~= false) and v or nil
end

-- Muestreo de textura con filtro para no perder detalle
local function sampleTex(img, id, u, v, partColor, texChild, rad)
    local sz = img.Size
    rad = rad or 1
    local cx = math.clamp(math.floor(u * sz.X), 0, sz.X - 1)
    local cy = math.clamp(math.floor(v * sz.Y), 0, sz.Y - 1)
    local texTrans = (texChild and texChild:IsA("Texture")) and texChild.Transparency or 0
    local oneMinusT = 1 - texTrans

    local sr, sg, sb, n = 0, 0, 0, 0
    for dy = -rad, rad do
        local py = cy + dy
        if py >= 0 and py < sz.Y then
            for dx = -rad, rad do
                local px = cx + dx
                if px >= 0 and px < sz.X then
                    local ok, buf = pcall(img.ReadPixelsBuffer, img, Vector2.new(px, py), Vector2.new(1, 1))
                    if ok then
                        local r = buffer.readu8(buf, 0) / 255
                        local g = buffer.readu8(buf, 1) / 255
                        local b = buffer.readu8(buf, 2) / 255
                        local a = buffer.readu8(buf, 3) / 255
                        local blend = a * oneMinusT
                        sr += partColor.R + (r - partColor.R) * blend
                        sg += partColor.G + (g - partColor.G) * blend
                        sb += partColor.B + (b - partColor.B) * blend
                        n += 1
                    end
                end
            end
        end
    end
    if n == 0 then return partColor end
    return Color3.new(
        math.clamp(sr / n, 0, 1),
        math.clamp(sg / n, 0, 1),
        math.clamp(sb / n, 0, 1))
end

-- Color base de la superficie
local function getSurfaceColor(part)
    local sc = part:GetAttribute("SampleColor")
    if typeof(sc) == "Color3" then return sc end
    return part.Color
end

-- Cara según la normal
local function faceFromNormal(part, worldNormal)
    local ln = part.CFrame:VectorToObjectSpace(worldNormal)
    local ax, ay, az = math.abs(ln.X), math.abs(ln.Y), math.abs(ln.Z)
    if     ax >= ay and ax >= az then return ln.X > 0 and "Right"  or "Left"
    elseif ay >= ax and ay >= az then return ln.Y > 0 and "Top"    or "Bottom"
    else                              return ln.Z > 0 and "Back"   or "Front"
    end
end

-- Obtener texturas de una cara
local function getTexLayers(part, hitFaceName)
    local layers  = {}
    local fallback = nil
    local seen    = {}
    for _, c in ipairs(part:GetChildren()) do
        if (c:IsA("Texture") or c:IsA("Decal")) and c.Texture ~= "" then
            local face = tostring(c.Face):match("NormalId%.(.+)") or ""
            local id   = c.Texture
            if face == hitFaceName and not seen[id] then
                seen[id] = true
                table.insert(layers, { id, c })
            elseif not fallback and not seen[id] then
                fallback = { id, c }
            end
        end
    end
    if #layers == 0 and fallback then table.insert(layers, fallback) end
    if #layers == 0 and part:IsA("MeshPart") and part.TextureID ~= "" then
        table.insert(layers, { part.TextureID, nil })
    end
    if #layers == 0 then
        local sa = part:FindFirstChildOfClass("SurfaceAppearance")
        if sa then
            local id = tostring(sa.ColorMapContent):match("(rbxassetid://%d+)")
            if id then table.insert(layers, { id, nil }) end
        end
    end
    return layers
end

-- Calcular coordenadas UV
local function getUV(part, hitPos, faceEnum)
    local lp = part.CFrame:PointToObjectSpace(hitPos)
    local sz = part.Size
    local lx = lp.X / sz.X + 0.5
    local ly = lp.Y / sz.Y + 0.5
    local lz = lp.Z / sz.Z + 0.5
    if     faceEnum == Enum.NormalId.Front  then return 1 - lx, 1 - ly
    elseif faceEnum == Enum.NormalId.Back   then return     lx, 1 - ly
    elseif faceEnum == Enum.NormalId.Right  then return 1 - lz, 1 - ly
    elseif faceEnum == Enum.NormalId.Left   then return     lz, 1 - ly
    elseif faceEnum == Enum.NormalId.Top    then return 1 - lz,     lx
    elseif faceEnum == Enum.NormalId.Bottom then return 1 - lz, 1 - lx
    end
    return 0.5, 0.5
end

-- UV con soporte para teselas/desplazamiento
local function hitUV(part, hitPos, faceEnum, texChild)
    local u, v = getUV(part, hitPos, faceEnum)
    if texChild and texChild:IsA("Texture") then
        local sz = part.Size
        local su, sv = texChild.StudsPerTileU, texChild.StudsPerTileV
        if su > 0 and sv > 0 then
            local fw, fh
            if faceEnum == Enum.NormalId.Front or faceEnum == Enum.NormalId.Back then
                fw, fh = sz.X, sz.Y
            elseif faceEnum == Enum.NormalId.Right or faceEnum == Enum.NormalId.Left then
                fw, fh = sz.Z, sz.Y
            else
                fw, fh = sz.Z, sz.X
            end
            local ou = texChild.OffsetStudsU or 0
            local ov = texChild.OffsetStudsV or 0
            u = (((u - 0.5) * fw + ou) / su) % 1
            v = (((v - 0.5) * fh + ov) / sv) % 1
            if u < 0 then u = u + 1 end
            if v < 0 then v = v + 1 end
        end
    end
    return math.clamp(u, 0, 1), math.clamp(v, 0, 1)
end

-- Definición de caras
local FACES = {
    { name = "Front",  ln = Vector3.new( 0,  0, -1), faceEnum = Enum.NormalId.Front  },
    { name = "Back",   ln = Vector3.new( 0,  0,  1), faceEnum = Enum.NormalId.Back   },
    { name = "Right",  ln = Vector3.new( 1,  0,  0), faceEnum = Enum.NormalId.Right  },
    { name = "Left",   ln = Vector3.new(-1,  0,  0), faceEnum = Enum.NormalId.Left   },
    { name = "Top",    ln = Vector3.new( 0,  1,  0), faceEnum = Enum.NormalId.Top    },
    { name = "Bottom", ln = Vector3.new( 0, -1,  0), faceEnum = Enum.NormalId.Bottom },
}

-- Rayo por píxel
local function pixelRay(part, face, px, py, imgW, imgH)
    local u = (px + 0.5) / imgW
    local v = (py + 0.5) / imgH
    local sz = part.Size
    local fe = face.faceEnum
    local ln = face.ln
    local lx, ly, lz

    if fe == Enum.NormalId.Front then
        lx = (0.5 - u) * sz.X; ly = (0.5 - v) * sz.Y; lz = -sz.Z * 0.5
    elseif fe == Enum.NormalId.Back then
        lx = (u - 0.5) * sz.X; ly = (0.5 - v) * sz.Y; lz = sz.Z * 0.5
    elseif fe == Enum.NormalId.Right then
        lx = sz.X * 0.5; ly = (0.5 - v) * sz.Y; lz = (0.5 - u) * sz.Z
    elseif fe == Enum.NormalId.Left then
        lx = -sz.X * 0.5; ly = (0.5 - v) * sz.Y; lz = (u - 0.5) * sz.Z
    elseif fe == Enum.NormalId.Top then
        lx = (v - 0.5) * sz.X; ly = sz.Y * 0.5; lz = (0.5 - u) * sz.Z
    elseif fe == Enum.NormalId.Bottom then
        lx = (0.5 - v) * sz.X; ly = -sz.Y * 0.5; lz = (0.5 - u) * sz.Z
    end

    local wn = part.CFrame:VectorToWorldSpace(ln)
    local surfPos = part.CFrame:PointToWorldSpace(Vector3.new(lx, ly, lz))
    return surfPos + wn * SURF_OFF, -wn, surfPos
end

-- Leer tus PaintCanvas automáticamente
local function getCanvases(char)
    local out = {}
    for _, part in ipairs(char:GetChildren()) do
        if part:IsA("BasePart") and PaintAtlas.IsPaintablePart(part) then
            local pd = {}
            for _, face in ipairs(FACES) do
                local sg  = part:FindFirstChild("PaintCanvas_" .. face.name)
                local lbl = sg and (sg:IsA("Texture") and sg or sg:FindFirstChild("PaintImage"))
                if lbl then
                    local ok, img = pcall(function()
                        return lbl:IsA("Texture") and lbl.ImageContent.Object or lbl.ImageContent.Object
                    end)
                    if ok and img then
                        pd[face.name] = { img = img, sz = img.Size, face = face }
                    end
                end
            end
            if next(pd) then out[part] = pd end
        end
    end
    return out
end

-- Precargar texturas de las paredes cercanas
local function prewarm(char, rp)
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local dirs = {
        Vector3.new(1,0,0), Vector3.new(-1,0,0), Vector3.new(0,0,1), Vector3.new(0,0,-1),
        Vector3.new(0,-1,0), Vector3.new(0,1,0), Vector3.new(1,0,1).Unit,
        Vector3.new(-1,0,1).Unit, Vector3.new(1,0,-1).Unit, Vector3.new(-1,0,-1).Unit,
    }
    for _, d in ipairs(dirs) do
        local r = workspace:Raycast(hrp.Position, d * 120, rp)
        if r and r.Instance then
            local fn = faceFromNormal(r.Instance, r.Normal)
            local layers = getTexLayers(r.Instance, fn)
            for _, l in ipairs(layers) do loadTex(l[1]) end
        end
    end
end

-- DETECTAR LA PARED PRINCIPAL QUE TIENES ENFRENTE
local function findDominantWall(char, rp)
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return nil end
    local origin = hrp.Position
    local votes = {}
    local dirs = {}
    for az = 0, 350, 15 do
        local rad = math.rad(az)
        for _, elev in ipairs({-0.2, 0, 0.2}) do
            dirs[#dirs+1] = Vector3.new(math.sin(rad), elev, math.cos(rad)).Unit
        end
    end
    for _, d in ipairs(dirs) do
        local r = workspace:Raycast(origin, d * 80, rp)
        if r and r.Instance and r.Instance ~= char then
            local hasTex = false
            for _, c in ipairs(r.Instance:GetChildren()) do
                if (c:IsA("Texture") or c:IsA("Decal")) and c.Texture ~= "" then
                    hasTex = true; break
                end
            end
            local dist = (r.Position - origin).Magnitude
            local v = votes[r.Instance]
            if not v then
                votes[r.Instance] = { count = 1, dist = dist, normal = r.Normal, point = r.Position, hasTex = hasTex }
            else
                v.count += 1
                if dist < v.dist then v.dist = dist; v.normal = r.Normal; v.point = r.Position end
            end
        end
    end
    local best, bestScore = nil, -1
    for inst, v in pairs(votes) do
        local score = v.count * 100 - v.dist + (v.hasTex and 300 or 0)
        if score > bestScore then bestScore = score; best = { inst = inst, normal = v.normal, point = v.point } end
    end
    return best
end

-- LEER COLOR Y TEXTURA DESDE LA PARED PROYECTADA
local function sampleWallAtWorld(wall, wallNormal, wallPoint, worldPos, rad)
    local d = (worldPos - wallPoint):Dot(wallNormal)
    local proj = worldPos - d * wallNormal
    local lp = wall.CFrame:PointToObjectSpace(proj)
    local hs = wall.Size * 0.55
    if math.abs(lp.X) > hs.X or math.abs(lp.Y) > hs.Y or math.abs(lp.Z) > hs.Z then
        return nil
    end
    local fe = faceFromNormal(wall, wallNormal)
    local feEnum = Enum.NormalId[fe]
    if not feEnum then return nil end

    local finalColor = getSurfaceColor(wall)
    local layers = getTexLayers(wall, fe)
    for _, layer in ipairs(layers) do
        local tid, tc = layer[1], layer[2]
        local timg = getTex(tid)
        if timg then
            local tu, tv = hitUV(wall, proj, feEnum, tc)
            finalColor = sampleTex(timg, tid, tu, tv, finalColor, tc, rad)
        else
            loadTex(tid)
        end
    end
    return math.clamp(math.floor(finalColor.R*255+0.5),0,255),
           math.clamp(math.floor(finalColor.G*255+0.5),0,255),
           math.clamp(math.floor(finalColor.B*255+0.5),0,255)
end

-- Obtener color para un píxel: PRIORIDAD = PARED
local function sampleRayColor(part, face, cpx, cpy, imgW, imgH, rp, pr, pg, pb, domWall, rad)
    local rayOrg, dir, surfPos = pixelRay(part, face, cpx, cpy, imgW, imgH)

    -- ✅ PROYECCIÓN SOBRE LA PARED PRINCIPAL
    if domWall then
        local wr, wg, wb = sampleWallAtWorld(domWall.inst, domWall.normal, domWall.point, surfPos, rad)
        if wr then return wr, wg, wb end
    end

    -- Respaldo: rayo normal
    local remaining = RAY_LENGTH
    local r, g, b = pr, pg, pb
    for _ = 1, 4 do
        local res = workspace:Raycast(rayOrg, dir * remaining, rp)
        if not res then break end
        local hit = res.Instance
        local dist = (res.Position - rayOrg).Magnitude
        local isChar = false
        local hp = hit.Parent
        if hp and (hp:FindFirstChildOfClass("Humanoid") or (hp.Parent and hp.Parent:FindFirstChildOfClass("Humanoid"))) then
            isChar = true
        end
        if dist < 0.3 or isChar then
            remaining = remaining - dist - 0.05
            rayOrg = res.Position + dir * 0.05
            if remaining < 0.5 then break end
            continue
        end
        if hit.Transparency < 0.85 then
            local finalColor = getSurfaceColor(hit)
            local hitFace = faceFromNormal(hit, res.Normal)
            local fe = Enum.NormalId[hitFace]
            local layers = getTexLayers(hit, hitFace)
            for _, layer in ipairs(layers) do
                local tid, tc = layer[1], layer[2]
                local timg = getTex(tid)
                if timg and fe then
                    local tu, tv = hitUV(hit, res.Position, fe, tc)
                    finalColor = sampleTex(timg, tid, tu, tv, finalColor, tc, rad)
                else
                    loadTex(tid)
                end
            end
            r = math.floor(finalColor.R*255+0.5)
            g = math.floor(finalColor.G*255+0.5)
            b = math.floor(finalColor.B*255+0.5)
        end
        break
    end
    return math.clamp(r,0,255), math.clamp(g,0,255), math.clamp(b,0,255)
end

-- Rellenar bloque de píxeles
local function fillTile(buf, imgW, px0, py0, px1, py1, r, g, b)
    for py2 = py0, py1 - 1 do
        local rowBase = py2 * imgW
        for px2 = px0, px1 - 1 do
            local o = (rowBase + px2) * 4
            buffer.writeu8(buf, o, r)
            buffer.writeu8(buf, o+1, g)
            buffer.writeu8(buf, o+2, b)
            buffer.writeu8(buf, o+3, 255)
        end
    end
end

-- Pintar cara completa
local function paintFace(part, cd, rp, domWall)
    local img = cd.img
    local imgW = cd.sz.X
    local imgH = cd.sz.Y
    local face = cd.face
    local totalPx = imgW * imgH
    local buf = buffer.create(totalPx * 4)

    local pc = part.Color
    local pr = math.floor(pc.R*255+0.5)
    local pg = math.floor(pc.G*255+0.5)
    local pb = math.floor(pc.B*255+0.5)
    for i = 0, totalPx-1 do
        local o = i*4
        buffer.writeu8(buf, o, pr)
        buffer.writeu8(buf, o+1, pg)
        buffer.writeu8(buf, o+2, pb)
        buffer.writeu8(buf, o+3, 255)
    end

    local fgW = math.max(1, math.ceil(imgW / RAY_DIVISOR))
    local fgH = math.max(1, math.ceil(imgH / RAY_DIVISOR))
    local ftW = imgW / fgW
    local ftH = imgH / fgH
    local COARSE = 4
    local cgW = math.ceil(fgW / COARSE)
    local cgH = math.ceil(fgH / COARSE)
    local HQ_RAD = 1

    local function fineColor(fx, fy, rad)
        local cpx = math.floor((fx + 0.5) * ftW)
        local cpy = math.floor((fy + 0.5) * ftH)
        return sampleRayColor(part, face, cpx, cpy, imgW, imgH, rp, pr, pg, pb, domWall, rad)
    end

    for cby = 0, cgH-1 do
        for cbx = 0, cgW-1 do
            local fx0 = cbx * COARSE
            local fy0 = cby * COARSE
            local fx1 = math.min(fx0 + COARSE, fgW)
            local fy1 = math.min(fy0 + COARSE, fgH)

            local r0,g0,b0 = fineColor(fx0,     fy0,     HQ_RAD)
            local r1,g1,b1 = fineColor(fx1-1,   fy0,     HQ_RAD)
            local r2,g2,b2 = fineColor(fx0,     fy1-1,   HQ_RAD)
            local r3,g3,b3 = fineColor(fx1-1,   fy1-1,   HQ_RAD)

            local TH = 5
            local uniform =
                math.abs(r0-r1)<=TH and math.abs(g0-g1)<=TH and math.abs(b0-b1)<=TH and
                math.abs(r0-r2)<=TH and math.abs(g0-g2)<=TH and math.abs(b0-b2)<=TH and
                math.abs(r0-r3)<=TH and math.abs(g0-g3)<=TH and math.abs(b0-b3)<=TH

            if uniform then
                local ar = (r0+r1+r2+r3)//4
                local ag = (g0+g1+g2+g3)//4
                local ab = (b0+b1+b2+b3)//4
                local px0 = math.floor(fx0 * ftW)
                local py0 = math.floor(fy0 * ftH)
                local px1 = math.min(math.floor(fx1 * ftW), imgW)
                local py1 = math.min(math.floor(fy1 * ftH), imgH)
                fillTile(buf, imgW, px0, py0, px1, py1, ar, ag, ab)
            else
                for fy = fy0, fy1-1 do
                    for fx = fx0, fx1-1 do
                        local r,g,b = fineColor(fx, fy, HQ_RAD)
                        local px0 = math.floor(fx * ftW)
                        local py0 = math.floor(fy * ftH)
                        local px1 = math.min(math.floor((fx+1)*ftW), imgW)
                        local py1 = math.min(math.floor((fy+1)*ftH), imgH)
                        fillTile(buf, imgW, px0, py0, px1, py1, r, g, b)
                    end
                end
            end
        end
    end

    pcall(img.WritePixelsBuffer, img, Vector2.zero, cd.sz, buf)
end

-- Excluir tu personaje de los rayos
local function buildExclude(char)
    local t = { char }
    for _, inst in ipairs(workspace:GetDescendants()) do
        if inst:IsA("BasePart") and (inst.Transparency >= 0.95 or inst.Size.Magnitude < 0.15) then
            t[#t+1] = inst
        end
    end
    return t
end

-- ⭐ FUNCIÓN PRINCIPAL DE CAMUFLAJE COMPLETO
local running = false
local function autoCamo(setStatus, notif)
    if running then notif("Pintando... espera", Color3.fromRGB(255,150,50)); return end
    if not isHider() then
        local msg = plr:GetAttribute("InRound") and ("Eres: "..(plr:GetAttribute("RoundRole") or "")) or "No en ronda"
        notif(msg, Color3.fromRGB(200,100,40))
        setStatus(msg); return
    end

    running = true
    local char = plr.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then
        notif("¡Sin personaje!", Color3.fromRGB(200,60,60))
        running=false; return
    end

    setStatus("Detectando pared...", Color3.fromRGB(255,200,60))
    local rp = RaycastParams.new()
    rp.FilterType = Enum.RaycastFilterType.Exclude
    rp.FilterDescendantsInstances = buildExclude(char)

    prewarm(char, rp)
    local deadline = os.clock()+5
    repeat task.wait(0.05) until next(loadingSet)==nil or os.clock()>deadline

    -- ✅ DETECTA LA PARED Y LA PROYECTA
    local domWall = findDominantWall(char, rp)
    if domWall then
        notif("✅ Pared detectada → Camuflaje completo", Color3.fromRGB(80,200,120))
    else
        notif("⚠ Sin pared cercana → Modo puntual", Color3.fromRGB(255,200,60))
    end

    local canvases = getCanvases(char)
    local total, done = 0, 0
    for _, pd in pairs(canvases) do for _ in pairs(pd) do total+=1 end end
    if total==0 then
        notif("Sin PaintCanvas - ¿Eres Hider?", Color3.fromRGB(200,60,60))
        running=false; return
    end

    setStatus("Pintando 0/"..total.."...", Color3.fromRGB(100,200,120))
    for part, pd in pairs(canvases) do
        if killed then break end
        for _, cd in pairs(pd) do
            if killed then break end
            paintFace(part, cd, rp, domWall)
            done+=1
            setStatus(string.format("Pintando %d/%d...", done, total))
            if done%4==0 then task.wait() end
        end
    end

    running=false
    setStatus("✅ ¡Listo! "..done.." caras", Color3.fromRGB(80,220,120))
    notif("Camuflaje aplicado ✅", Color3.fromRGB(50,180,80))
end

-- Muestreo puntual rápido (tecla E)
local function sampleFill(setStatus, notif)
    if not isHider() then notif("Debes ser Hider", Color3.fromRGB(200,100,40)); return end
    local cam = workspace.CurrentCamera
    local mp = uis:GetMouseLocation()
    local ray = cam:ViewportPointToRay(mp.X, mp.Y)
    local rp = RaycastParams.new()
    rp.FilterType = Enum.RaycastFilterType.Exclude
    local char = plr.Character
    if char then rp.FilterDescendantsInstances = {char} end
    local res = workspace:Raycast(ray.Origin, ray.Direction*1000, rp)
    if not res then notif("No golpeó nada", Color3.fromRGB(200,60,60)); return end
    local color = getSurfaceColor(res.Instance)
    if not char then return end
    local canvases = getCanvases(char)
    for _, pd in pairs(canvases) do
        for _, cd in pairs(pd) do
            pcall(PaintDrawing.FillImageArea, cd.img, Vector2.zero, cd.sz, color)
        end
        pcall(function()
            if PaintEvent then PaintEvent:FireServer({kind="fillPart",targetUserId=plr.UserId,partName=part.Name,color=color}) end
        end)
    end
    notif(string.format("RGB(%d,%d,%d)", math.floor(color.R*255),math.floor(color.G*255),math.floor(color.B*255)), Color3.fromRGB(40,120,200))
    setStatus("Muestreado ✅")
end

-- INTERFAZ
local pg = plr:WaitForChild("PlayerGui")
do local e = pg:FindFirstChild("CamoGui2"); if e then e:Destroy() end end

local sg = Instance.new("ScreenGui")
sg.Name = "CamoGui2"; sg.ResetOnSpawn = false; sg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling; sg.Parent = pg

local function notif(text, color)
    local f = Instance.new("Frame")
    f.Size = UDim2.new(0,290,0,46); f.Position = UDim2.new(0.5,-145,0,-60)
    f.BackgroundColor3=Color3.fromRGB(18,18,18); f.BackgroundTransparency=0.1; f.BorderSizePixel=0; f.ZIndex=20; f.Parent=pg
    Instance.new("UICorner",f).CornerRadius=UDim.new(0,10)
    local st=Instance.new("UIStroke",f); st.Color=color; st.Thickness=1.5; st.Transparency=0.3
    local dot=Instance.new("Frame"); dot.Size=UDim2.new(0,8,0,8); dot.Position=UDim2.new(0,12,0.5,-4); dot.BackgroundColor3=color; Instance.new("UICorner",dot).CornerRadius=UDim.new(1,0); dot.Parent=f
    local tl=Instance.new("TextLabel"); tl.Size=UDim2.new(1,-30,1,0); tl.Position=UDim2.new(0,28,0,0); tl.BackgroundTransparency=1
    tl.Text=text; tl.TextColor3=Color3.fromRGB(230,230,230); tl.TextSize=12; tl.Font=Enum.Font.GothamSemibold; tl.TextXAlignment=Enum.TextXAlignment.Left; tl.Parent=f
    ts:Create(f,TweenInfo.new(0.3,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Position=UDim2.new(0.5,-145,0,14)}):Play()
    task.delay(3.5,function() ts:Create(f,TweenInfo.new(0.25),{Position=UDim2.new(0.5,-145,0,-60)}):Play(); task.delay(0.3,function() if f.Parent then f:Destroy() end) end)
end

local W_PANEL, H_PANEL = 220, 140
local panel = Instance.new("Frame")
panel.Size=UDim2.new(0,W_PANEL,0,H_PANEL); panel.Position=UDim2.new(0,10,0.5,-H_PANEL/2)
panel.BackgroundColor3=Color3.fromRGB(15,15,15); panel.BackgroundTransparency=0.1; panel.BorderSizePixel=0; panel.Parent=sg
Instance.new("UICorner",panel).CornerRadius=UDim.new(0,10)
local ps=Instance.new("UIStroke",panel); ps.Color=Color3.fromRGB(80,80,80); ps.Thickness=1; ps.Transparency=0.5

local ttl=Instance.new("TextLabel")
ttl.Size=UDim2.new(1,-10,0,28); ttl.Position=UDim2.new(0,12,0,4); ttl.BackgroundTransparency=1
ttl.Text="Camo v2.6 ⭐ PARED/IMAGEN"; ttl.TextColor3=Color3.fromRGB(220,220,220); ttl.TextSize=13; ttl.Font=Enum.Font.GothamBold; ttl.TextXAlignment=Enum.TextXAlignment.Left; ttl.Parent=panel

local statusLbl=Instance.new("TextLabel")
statusLbl.Size=UDim2.new(1,-10,0,16); statusLbl.Position=UDim2.new(0,12,0,30); statusLbl.BackgroundTransparency=1
statusLbl.Text="Esperando ronda..."; statusLbl.TextColor3=Color3.fromRGB(110,110,110); statusLbl.TextSize=10; statusLbl.Font=Enum.Font.Gotham; statusLbl.TextXAlignment=Enum.TextXAlignment.Left; statusLbl.Parent=panel

local function setStatus(txt,col) statusLbl.Text=txt; statusLbl.TextColor3=col or Color3.fromRGB(110,110,110) end

local function makeBtn(label,key,y,col)
    local b=Instance.new("TextButton"); b.Size=UDim2.new(1,-14,0,32); b.Position=UDim2.new(0,7,0,y)
    b.BackgroundColor3=col; b.BorderSizePixel=0; b.AutoButtonColor=false; b.Text=""; b.Parent=panel
    Instance.new("UICorner",b).CornerRadius=UDim.new(0,7)
    local l=Instance.new("TextLabel"); l.Size=UDim2.new(1,-40,1,0); l.Position=UDim2.new(0,10,0,0); l.BackgroundTransparency=1
    l.Text=label; l.TextColor3=Color3.new(1,1,1); l.TextSize=11; l.Font=Enum.Font.GothamSemibold; l.TextXAlignment=Enum.TextXAlignment.Left; l.Parent=b
    local k=Instance.new("TextLabel"); k.Size=UDim2.new(0,30,0,18); k.Position=UDim2.new(1,-36,0.5,-9); k.BackgroundColor3=Color3.fromRGB(0,0,0); k.BackgroundTransparency=0.5
    k.Text=key; k.TextColor3=Color3.fromRGB(180,180,180); k.TextSize=9; k.Font=Enum.Font.GothamBold; k.Parent=b
    Instance.new("UICorner",k).CornerRadius=UDim.new(0,4)
    local hover=col:Lerp(Color3.new(1,1,1),0.12); local pressed=col:Lerp(Color3.new(0,0,0),0.15)
    b.MouseEnter:Connect(function() b.BackgroundColor3=hover end)
    b.MouseLeave:Connect(function() b.BackgroundColor3=col end)
    b.MouseButton1Down:Connect(function() b.BackgroundColor3=pressed end)
    b.MouseButton1Up:Connect(function() b.BackgroundColor3=col end)
    return b
end

local sBtn=makeBtn("📍 Muestreo puntual","[E]",54,Color3.fromRGB(35,110,190))
local cBtn=makeBtn("🧱 CAMUFLAJE PARED/IMAGEN","[T]",92,Color3.fromRGB(40,160,70))

-- Arrastrar panel
local drag,ds,dp=false,nil,nil
panel.InputBegan:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then drag=true; ds=i.Position; dp=panel.Position end end)
uis.InputChanged:Connect(function(i) if not drag then return end; if i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch then local d=i.Position-ds; panel.Position=UDim2.new(dp.X.Scale,dp.X.Offset+d.X,dp.Y.Scale,dp.Y.Offset+d.Y) end end)
uis.InputEnded:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then drag=false end end)

local function doSample() sampleFill(setStatus,notif) end
local function doCamo() task.spawn(autoCamo,setStatus,notif) end

sBtn.MouseButton1Click:Connect(doSample); sBtn.TouchTap:Connect(doSample)
cBtn.MouseButton1Click:Connect(doCamo); cBtn.TouchTap:Connect(doCamo)

local ic=uis.InputBegan:Connect(function(i,gpe)
    if killed or gpe then return end
    if i.KeyCode==Enum.KeyCode.E then doSample()
    elseif i.KeyCode==Enum.KeyCode.T then doCamo() end
end)

local function updateStatus()
    if killed then return end
    if isHider() then setStatus("✅ Hider - Listo",Color3.fromRGB(80,200,120))
    elseif plr:GetAttribute("InRound") then setStatus("❌ No eres Hider",Color3.fromRGB(200,100,40))
    else setStatus("⏳ Esperando ronda...") end
end
plr:GetAttributeChangedSignal("RoundRole"):Connect(updateStatus)
plr:GetAttributeChangedSignal("InRound"):Connect(updateStatus)
updateStatus()

notif("Camo v2.6 - [T] = CAMUFLAJE PARED/IMAGEN", Color3.fromRGB(80,180,255))

-- Limpieza al detener
task.spawn(function()
    while not killed do task.wait(0.5) end
    ic:Disconnect()
    for _,img in pairs(texCache) do if img and img~=false then pcall(function() img:Destroy() end) end end
    texCache={}; if sg.Parent then sg:Destroy() end
end)
