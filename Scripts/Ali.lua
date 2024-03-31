--//====================================================\\--
--||			   CREATED BY SHACKLUSTER
--\\====================================================//--



wait(0.2)



Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local sick = Instance.new("Sound",Character)
sick.SoundId = "rbxassetid://183142252"
sick.Looped = true
sick.Pitch = 1
sick.Volume = 5
sick:Play()
Humanoid.DisplayDistanceType = "None"

local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5,35,2,35)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "Name"
naeeym2.PlayerToHideFrom = Player
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "Ali"
tecks2.Font = "SourceSansBold"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = BrickColor.new("Really red").Color
tecks2.TextStrokeColor3 = BrickColor.new("Really Red").Color
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

--//=================================\\
--||		  CUSTOMIZATION
--\\=================================//

Player_Size = 1 --Size of the player.
Animation_Speed = 3
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)

local Speed = 16
local Effects2 = {}

--//=================================\\
--|| 	  END OF CUSTOMIZATION
--\\=================================//

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local CHANGEDEFENSE = 0
local CHANGEDAMAGE = 0
local CHANGEMOVEMENT = 0
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local WALK = 0
local VALUE1 = false
local VALUE2 = false
local POWERLEVEL = 1
local DEATH = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local Weapon = IT("Model")
Weapon.Name = "Adds"
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local HITPLAYERSOUNDS = {--[["199149137", "199149186", "199149221", "199149235", "199149269", "199149297"--]]"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}
local HITARMORSOUNDS = {"199149321", "199149338", "199149367", "199149409", "199149452"}
local HITWEAPONSOUNDS = {"199148971", "199149025", "199149072", "199149109", "199149119"}
local HITBLOCKSOUNDS = {"199148933", "199148947"}
local UNANCHOR = true
local LIMITBROKEN = false
local HITFLOOR, HITPOS = nil
local FLIGHT = false

local SKILLTEXTCOLOR = BRICKC("Really red").Color

--//=================================\\
--\\=================================//


--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
		lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

--//=================================\\
--\\=================================//





--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
 
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end


function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

local SOUND = IT("Sound")

function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = SOUND:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		--Swait()
		NEWSOUND:play()
		if DOESLOOP == false then
			repeat Swait() until NEWSOUND.Playing == false
			NEWSOUND:remove()
		elseif DOESLOOP == true then
			NEWSOUND.Looped = true
		end
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

function CreateWave(SIZE,WAIT,CFRAME,DOESROT,ROT,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,-SIZE.X/8)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			mesh.Offset = VT(0,0,-(mesh.Scale.X/8))
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0,ROT,0)
			end
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function CreateRing(SIZE,DOESROT,ROT,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0,ROT,0)
			end
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function MagicSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			wave.Transparency = wave.Transparency + (1/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function CreateDebreeRing(FLOOR,POSITION,SIZE,BLOCKSIZE,SWAIT)
	if FLOOR ~= nil then
		coroutine.resume(coroutine.create(function()
			local PART = CreatePart(3, Effects, "Plastic", 0, 1, "Really red", "DebreeCenter", VT(0,0,0))
			PART.CFrame = CF(POSITION)
			for i = 1, 45 do
				local RingPiece = CreatePart(3, Effects, "Plastic", 0, 0, "Really red", "DebreePart", BLOCKSIZE)
				RingPiece.Material = FLOOR.Material
				RingPiece.Color = FLOOR.Color
				RingPiece.CFrame = PART.CFrame * ANGLES(RAD(0), RAD(i*8), RAD(0)) * CF(SIZE*4, 0, 0) * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))
				Debris:AddItem(RingPiece,SWAIT)
			end
			PART:remove()
		end))
	end
end

function Slice(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "448386996", "", VT(0,SIZE/10,SIZE/10), VT(0,0,0))
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale * GROW
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function CreateFlyingDebree(FLOOR,POSITION,AMOUNT,BLOCKSIZE,SWAIT,STRENGTH)
	if FLOOR ~= nil then
		for i = 1, AMOUNT do
			local DEBREE = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "Debree", BLOCKSIZE, false)
			DEBREE.Material = FLOOR.Material
			DEBREE.Color = FLOOR.Color
			DEBREE.CFrame = POSITION * ANGLES(RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)),RAD(MRANDOM(-360,360)))
			DEBREE.Velocity = VT(MRANDOM(-STRENGTH,STRENGTH),STRENGTH,MRANDOM(-STRENGTH,STRENGTH))
			coroutine.resume(coroutine.create(function()
				Swait(15)
				DEBREE.Parent = workspace
				DEBREE.CanCollide = true
				Debris:AddItem(DEBREE,SWAIT)
			end))
		end
	end
end

function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

function CheckTableForString(Table, String)
	for i, v in pairs(Table) do
		if string.find(string.lower(String), string.lower(v)) then
			return true
		end
	end
	return false
end

function CheckIntangible(Hit)
	local ProjectileNames = {"Water", "Arrow", "Projectile", "Effect", "Rail", "Lightning", "Bullet"}
	if Hit and Hit.Parent then
		if ((not Hit.CanCollide or CheckTableForString(ProjectileNames, Hit.Name)) and not Hit.Parent:FindFirstChild("Humanoid")) then
			return true
		end
	end
	return false
end

Debris = game:GetService("Debris")

function CastZapRay(StartPos, Vec, Length, Ignore, DelayIfHit)
	local Direction = CFrame.new(StartPos, Vec).lookVector
	local Ignore = ((type(Ignore) == "table" and Ignore) or {Ignore})
	local RayHit, RayPos, RayNormal = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, Direction * Length), Ignore)
	if RayHit and CheckIntangible(RayHit) then
		if DelayIfHit then
			wait()
		end
		RayHit, RayPos, RayNormal = CastZapRay((RayPos + (Vec * 0.01)), Vec, (Length - ((StartPos - RayPos).magnitude)), Ignore, DelayIfHit)
	end
	return RayHit, RayPos, RayNormal
end

function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

function particles(art)
local EyeSizes={
	NumberSequenceKeypoint.new(0,1,0),
	NumberSequenceKeypoint.new(1,1,0)
}
local EyeTrans={
	NumberSequenceKeypoint.new(0,0.8,0),
	NumberSequenceKeypoint.new(1,1,0)
}
local PE=Instance.new("ParticleEmitter",art)
PE.LightEmission=.8
PE.Color = ColorSequence.new(BRICKC("Really red").Color)
PE.Size=NumberSequence.new(EyeSizes)
PE.Transparency=NumberSequence.new(EyeTrans)
PE.Lifetime=NumberRange.new(0.35,0.35,0.35)
PE.Rotation=NumberRange.new(0,360)
PE.Rate=999
PE.VelocitySpread = 10000
PE.Acceleration = Vector3.new(0,75,0)
PE.Drag = 5
PE.Speed = NumberRange.new(0,0,0)
PE.Texture="http://www.roblox.com/asset/?id=341277531"
PE.ZOffset = -1.5
PE.Name = "PE"
end

Weapon.Parent = Character

Humanoid.Died:connect(function()
	ATTACK = true
	DEATH = true
end)

local SKILL1FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.13, 0, 0.80, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 1 Frame")
local SKILL2FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.60, 0, 0.80, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 2 Frame")
local SKILL3FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.23, 0, 0.93, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 3 Frame")
local SKILL4FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.50, 0, 0.93, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 4 Frame")
local SKILL5FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.365, 0, 0.7, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 5 Frame")
local SKILL6FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.365, 0, 0.1, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 6 Frame")

local SKILL1TEXT = CreateLabel(SKILL1FRAME, "[Z] Warp", SKILLTEXTCOLOR, 7, "Garamond", 0, 2, 1, "Text 1")
local SKILL2TEXT = CreateLabel(SKILL2FRAME, "[B] Rival Smash", SKILLTEXTCOLOR, 7, "Garamond", 0, 2, 1, "Text 2")
local SKILL3TEXT = CreateLabel(SKILL3FRAME, "[C] Chunk chuck", SKILLTEXTCOLOR, 7, "Garamond", 0, 2, 1, "Text 3")
local SKILL4TEXT = CreateLabel(SKILL4FRAME, "[V] Boost", SKILLTEXTCOLOR, 7, "Garamond", 0, 2, 1, "Text 4")
local SKILL5TEXT = CreateLabel(SKILL5FRAME, "[X] X-Event", SKILLTEXTCOLOR, 7, "Garamond", 0, 2, 1, "Text 5")
local SKILL6TEXT = CreateLabel(SKILL6FRAME, "Power level: ["..POWERLEVEL.."]", SKILLTEXTCOLOR, 7, "Garamond", 0, 2, 1, "Text 6")

--//=================================\\
--||			DAMAGING
--\\=================================//

function killnearest(position,range,maxstrength)
	for i,v in ipairs(workspace:GetChildren()) do
	if v.ClassName == "Model" then
		local body = v:GetChildren()
			for part = 1, #body do
				if((body[part].ClassName == "Part" or body[part].ClassName == "MeshPart") and v ~= Character) then
					if(body[part].Position - position).Magnitude < range then
						if v.ClassName == "Model" then
							v:BreakJoints()
						end
						--table.insert(Effects2,{body[part],"Disappear",0.02,2,2,2,2})
						body[part].Velocity = CFrame.new(position,body[part].Position).lookVector*5*maxstrength
					end
				end
			end
		end
	end
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

Humanoid.HealthChanged:connect(function()
	if DEATH == false then
		if Humanoid.Health ~= "inf" then
			Humanoid.Health = "inf"
			CreateSound("907330011", Torso, 10, 1)
		end
		if Humanoid.MaxHealth ~= "inf" then
			Humanoid.MaxHealth = "inf"
		end
	end
end)

function VanishPlayer()
	tecks2.TextTransparency = 1
	tecks2.TextStrokeTransparency = 1
	for _, c in pairs(Character:GetChildren()) do
		if c.ClassName == "Part" then
			c.Transparency = 1
			if c:FindFirstChildOfClass("Decal") then
				c:FindFirstChildOfClass("Decal").Transparency = 1
			end
			if c:FindFirstChildOfClass("ParticleEmitter") then
				c:FindFirstChildOfClass("ParticleEmitter").Enabled = false
			end
		elseif c.ClassName == "Accessory" then
			c.Handle.Transparency = 1
			if c.Handle:FindFirstChildOfClass("ParticleEmitter") then
				c.Handle:FindFirstChildOfClass("ParticleEmitter").Enabled = false
			end
		end
	end
end

function Reappear()
	tecks2.TextTransparency = 0
	tecks2.TextStrokeTransparency = 0
	for _, c in pairs(Character:GetChildren()) do
		if c.ClassName == "Part" and c.Name ~= "HumanoidRootPart" then
			c.Transparency = 0
			if c:FindFirstChildOfClass("Decal") then
				c:FindFirstChildOfClass("Decal").Transparency = 0
			end
			if c:FindFirstChildOfClass("ParticleEmitter") then
				c:FindFirstChildOfClass("ParticleEmitter").Enabled = true
			end
		elseif c.ClassName == "Accessory" then
			c.Handle.Transparency = 0
			if c.Handle:FindFirstChildOfClass("ParticleEmitter") then
				c.Handle:FindFirstChildOfClass("ParticleEmitter").Enabled = true
			end
		end
	end
end

function Warp()
	ATTACK = true
	Rooted = true
	for i = 1, 50 do
		Swait()
		CreateRing(VT(0,0,0),false,0,5,RootPart.CFrame*ANGLES(RAD(0),RAD(90),RAD(0)),"Institutional white",VT(i/3,i/3,0))
		CreateRing(VT(0,0,0),false,0,5,RootPart.CFrame*ANGLES(RAD(0),RAD(0),RAD(0)),"Institutional white",VT(i/3,i/3,0))
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.3 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(25), RAD(0), RAD(0 - 2.5 * SIN(SINE / 12))), 3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0 + 2.5 * SIN(SINE / 12))), 3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0, -0.5) * ANGLES(RAD(140 + 2.5 * SIN(SINE / 12)), RAD(15), RAD(0)) * RIGHTSHOULDERC0, 3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0, -0.5) * ANGLES(RAD(140 + 2.5 * SIN(SINE / 12)), RAD(-15), RAD(0)) * LEFTSHOULDERC0, 3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-25 - 2.5 * SIN(SINE / 12))), 3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-45 - 2.5 * SIN(SINE / 12))), 3 / Animation_Speed)
	end
	if VALUE2 == false then
		VALUE2 = true
	elseif VALUE2 == true then
		VALUE2 = false
	end
	ATTACK = false
	Rooted = false
end

function RivalingOverthrower()
	if HITFLOOR ~= nil then
		if Mouse.Target.Parent ~= Character and Mouse.Target.Parent.Parent ~= Character and Mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
			local HITBODY = Mouse.Target.Parent
			local TORS = HITBODY:FindFirstChild("Torso") or HITBODY:FindFirstChild("UpperTorso")
			local HUMAN = Mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
			if TORS ~= nil and HUMAN ~= nil then
				ATTACK = true
				Rooted = true
				TORS.Anchored = true
				RootPart.CFrame = TORS.CFrame * CF(0,0,4)
				HITFLOOR, HITPOS = Raycast(TORS.Position, (CF(TORS.Position, TORS.Position + VT(0, -1, 0))).lookVector, 4 * TORS.Size.Y/2, HITBODY)
				local FLOOR = HITFLOOR
				local POS = HITPOS
				print(FLOOR)
				UNANCHOR = false
				RootPart.Anchored = true
				CreateSound("1295446488", Torso, 10, 1)
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 2 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
				end
				local TAUNTS = {"907329532","907333294","907329893"}
				CreateSound(TAUNTS[MRANDOM(1,#TAUNTS)], Torso, 10, 1)
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 2 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(45)), 2 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
				end
				RootPart.CFrame = TORS.CFrame * CF(0,0,2)
				CreateSound("260411131", TORS, 10, 1)
				TORS.Anchored = false
				local WELD = CreateWeldOrSnapOrMotor("Weld", TORS, RightArm, TORS, CF(0,-1,-0.5) * ANGLES(RAD(-90), RAD(0), RAD(0)), CF(0, 0, 0))
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(45)), 2 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-45)), 2 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(150), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
				end
				for i=0, 2, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.2) * ANGLES(RAD(65), RAD(0), RAD(0)), 0.2 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -1) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.3, -1) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
				end
				for i = 1, 15 do
					CreateRing(VT(0,0,0),false,0,25,CF(TORS.Position+VT(0,-3,0))*ANGLES(RAD(90),RAD(0),RAD(0)),"Institutional white",VT(i/5,i/5,0))
				end
				WELD:remove()
				local grav = Instance.new("BodyPosition",TORS)
				grav.P = 20000
				grav.D = 100
				grav.maxForce = Vector3.new(math.huge,math.huge,math.huge)
				grav.position = TORS.Position + VT(0,50,0)
				grav.Name = "GravityForce"
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(-25), RAD(0), RAD(45)), 2 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-45)), 2 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(150), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-25)), 2 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
				end
				for i=0, 2, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.2) * ANGLES(RAD(65), RAD(0), RAD(0)), 0.2 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -1) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.3, -1) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
				end
				CreateSound("1295446488", Torso, 10, 1)
				CreateWave(VT(0,0,0),15,CF(HITPOS),true,2,"Really red",VT(1,0.1,1))
				RootPart.CFrame = CF(TORS.Position)*CF(0,0,5)
				for i=0, 2, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 2 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 2 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 2 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 2 / Animation_Speed)
				end
				VanishPlayer()
				for i = 1, 50+(25*POWERLEVEL) do
					Swait()
					CreateRing(VT(0,0,0),false,0,25,TORS.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Institutional white",VT(POWERLEVEL/3,POWERLEVEL/3,0))
					CreateSound(HITWEAPONSOUNDS[MRANDOM(1,#HITWEAPONSOUNDS)], TORS, 10, 1)
					local CFRAME = CF(TORS.Position)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)))
					MagicSphere(VT(0,0,0),15,CFRAME,"Really red",VT(0.1,0.1,POWERLEVEL*5))
					MagicSphere(VT(0.1,0.1,0.1),15,CFRAME,"Really red",VT(0.1,0.1,POWERLEVEL*5))
				end
				RootPart.CFrame = CF(TORS.Position)*CF(0,15,1)
				Reappear()
				for i=0, 2, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.2) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.2 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, -0.5) * ANGLES(RAD(160), RAD(0), RAD(-20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.5) * ANGLES(RAD(160), RAD(0), RAD(20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				end
				for i = 1, 15 do
					CreateRing(VT(0,0,0),false,0,25,CF(TORS.Position+VT(0,3,0))*ANGLES(RAD(90),RAD(0),RAD(0)),"Institutional white",VT(i/5,i/5,0))
				end
				RootPart.CFrame = CF(TORS.Position)*CF(0,5,1)
				grav.Position = POS
				CreateDebreeRing(FLOOR,POS,6*POWERLEVEL,VT(6,6,6)*POWERLEVEL,10)
				CreateFlyingDebree(FLOOR,CF(POS),25,VT(4,4,4)*POWERLEVEL,10,50*POWERLEVEL)
				CreateSound("289842971", TORS, 3, 1)
				MagicSphere(VT(0,0,0),35,CF(POS),"Really red",VT(POWERLEVEL/2,POWERLEVEL/2,POWERLEVEL/2))
				MagicSphere(VT(0.1,0.1,0.1),35,CF(POS),"Really red",VT(POWERLEVEL/2,POWERLEVEL/2,POWERLEVEL/2))
				killnearest(POS,POWERLEVEL*10,5)
				if POWERLEVEL > 3 then
					MagicSphere(VT(0.1,500,0.1),15,CF(POS),"Institutional white",VT(POWERLEVEL,0,POWERLEVEL))
				end
				CreateWave(VT(0,0,0),15,CF(POS),true,2,"Really black",VT(POWERLEVEL*2,0.1,POWERLEVEL*2))
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.2) * ANGLES(RAD(45), RAD(0), RAD(0)), 3 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 3 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -1) * ANGLES(RAD(25), RAD(0), RAD(-20)) * RIGHTSHOULDERC0, 3 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -1) * ANGLES(RAD(25), RAD(0), RAD(20)) * LEFTSHOULDERC0, 3 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 3 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 3 / Animation_Speed)
				end
				HITBODY:BreakJoints()
				grav:remove()
				ATTACK = false
				Rooted = false
				UNANCHOR = true
				RootPart.Anchored = false
				if POWERLEVEL > 1 then
					POWERLEVEL = POWERLEVEL - 1
				end
			end
		end
	end
end

function ChunkChuck()
	if HITFLOOR ~= nil then
		ATTACK = true
		Rooted = true
		CreateSound("305685800", Head, 10, 1)
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-25)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
		end
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.75, -0.75 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(65), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -1) * ANGLES(RAD(65), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1, 0.5, -1) * ANGLES(RAD(65), RAD(0), RAD(0)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(65)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-65)), 2 / Animation_Speed)
		end
		CreateDebreeRing(HITFLOOR,HITPOS,3*POWERLEVEL,VT(2,2,2)*POWERLEVEL,3)
		CreateFlyingDebree(HITFLOOR,CF(HITPOS),25,VT(2,2,2)*POWERLEVEL,3,50*POWERLEVEL)
		local CHUNK = CreatePart(3, Effects, "Neon", 0, 0, "Peal", "Debree", VT(5,5,5)*POWERLEVEL/1.5)
		CHUNK.Color = HITFLOOR.Color
		CHUNK.Material = HITFLOOR.Material
		CHUNK.CFrame = Torso.CFrame*CF(0,0,-3*POWERLEVEL)
		CreateSound("260411131", CHUNK, 10, 1)
		CreateSound("289842971", Torso, 3, 1)	
		repeat
			Swait()
			CHUNK.CFrame = Torso.CFrame*CF(0,2+(2*POWERLEVEL),0)
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(170), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(170), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
		until HOLD == true
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			CHUNK.CFrame = Torso.CFrame*CF(0,2+(2*POWERLEVEL),0)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(170), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(170), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-25)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
		end
		CHUNK.CanCollide = true
		CHUNK.Anchored = false
		CHUNK.CFrame = RootPart.CFrame*CF(0,0,-1*POWERLEVEL)
		for i = 1, 25 do
			CreateRing(VT(0,0,0),false,0,15,RootPart.CFrame*CF(0,0,-3)*ANGLES(RAD(0),RAD(0),RAD(0)),"Really red",VT((POWERLEVEL/3)/i,(POWERLEVEL/3)/i,0))
		end
		local bv = Instance.new("BodyVelocity") 
		bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
		bv.velocity = RootPart.CFrame.lookVector*400
		bv.Parent = CHUNK
		local HIT = CHUNK.Touched:Connect(function(hit)
			if hit.Parent ~= workspace and hit.Parent ~= Character and hit.Parent.ClassName == "Model" then
				hit.Parent:BreakJoints()
			end
		end)
		CreateSound("138079201", CHUNK, 10, 1)
		Debris:AddItem(CHUNK,5)
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(25), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(115), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(115), RAD(0), RAD(0)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-25)), 2 / Animation_Speed)
		end
		ATTACK = false
		Rooted = false
		if POWERLEVEL > 1 then
			POWERLEVEL = POWERLEVEL - 1
		end
	end
end

function Boost()
	ATTACK = true
	Rooted = true
	CreateSound("466493476", Torso, 10, MRANDOM(7, 12) / 10)
	for i = 1, 50 do
		Swait()
		CreateRing(VT(0,0,0),false,0,5,RootPart.CFrame*ANGLES(RAD(0),RAD(90),RAD(0)),"Really red",VT(i/5,i/5,0))
		CreateRing(VT(0,0,0),false,0,5,RootPart.CFrame*ANGLES(RAD(0),RAD(0),RAD(0)),"Really red",VT(i/5,i/5,0))
		CreateRing(VT(0,0,0),false,0,25,RootPart.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Institutional white",VT(i/3,i/3,0))
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.3 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(25), RAD(0), RAD(0 - 2.5 * SIN(SINE / 12))), 3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0 + 2.5 * SIN(SINE / 12))), 3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0, -0.5) * ANGLES(RAD(140 + 2.5 * SIN(SINE / 12)), RAD(15), RAD(0)) * RIGHTSHOULDERC0, 3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0, -0.5) * ANGLES(RAD(140 + 2.5 * SIN(SINE / 12)), RAD(-15), RAD(0)) * LEFTSHOULDERC0, 3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-25 - 2.5 * SIN(SINE / 12))), 3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-45 - 2.5 * SIN(SINE / 12))), 3 / Animation_Speed)
	end
	POWERLEVEL = POWERLEVEL + 1
	ATTACK = false
	Rooted = false
end

function XEvent()
	if HITFLOOR ~= nil then
		VALUE2 = false
		CreateSound("907332670", Effects, 10, 1)
		local POS = HITPOS
		local FLOOR = HITFLOOR
		local STARTPOS = RootPart.CFrame
		ATTACK = true
		Rooted = true
		for i=0, 2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.2) * ANGLES(RAD(65), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -1) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.3, -1) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
		end
		UNANCHOR = false
		RootPart.Anchored = true
		CreateSound("1295446488", Effects, 10, 1)
		RootPart.CFrame = RootPart.CFrame*CF(0,100+(150*POWERLEVEL),0)
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-25)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
		end
		CreateSound("289315275", Effects, 10, 1)
		for i=0, 5, 0.1 / Animation_Speed do
			Swait()
			CreateRing(VT(0,0,0),false,0,25,RootPart.CFrame*CF(0,5,0)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/1.2,POWERLEVEL/1.2,0))
			CreateRing(VT(0,0,0),false,0,25,RootPart.CFrame*CF(0,5,0)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL,POWERLEVEL,0))
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(-25), RAD(0), RAD(45)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-45)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(150), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-25)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
		end
		CreateSound("260411131", Effects, 3, 1)
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			CreateRing(VT(0,0,0),false,0,25,RightArm.CFrame*CF(0,-1.5,0)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/5,POWERLEVEL/5,0))
			CreateRing(VT(0,0,0),false,0,25,RightArm.CFrame*CF(0,-1.5,0)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/4,POWERLEVEL/4,0))
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-25)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.75, 0.5, -1) * ANGLES(RAD(0), RAD(0), RAD(-90)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-25)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
		end
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			CreateRing(VT(0,0,0),false,0,25,RightArm.CFrame*CF(0,-1.5,0)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/5,POWERLEVEL/5,0))
			CreateRing(VT(0,0,0),false,0,25,RightArm.CFrame*CF(0,-1.5,0)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/4,POWERLEVEL/4,0))
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-45 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-25)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(170), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-25)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
		end
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			CreateRing(VT(0,0,0),false,0,25,RightArm.CFrame*CF(0,-1.5,0)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/4,POWERLEVEL/4,0))
			CreateRing(VT(0,0,0),false,0,25,RightArm.CFrame*CF(0,-1.5,0)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/3,POWERLEVEL/3,0))
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(75), RAD(0), RAD(45)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(-45)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-25)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
		end
		local BURNMARKS = {}
		local DEATHRAY1 = CreatePart(3, Effects, "Neon", 0, 0.5, "Really red", "RAY", VT(0,0,0))
		MakeForm(DEATHRAY1,"Cyl")
		local DEATHRAY2 = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "RAY", VT(0,0,0))
		MakeForm(DEATHRAY2,"Cyl")
		local loopsound = CreateSound("487214658", Effects, 4, 1, true)
		local AMOUNT = POWERLEVEL * 25
		for i = 1, POWERLEVEL * 50 do
			Swait()
			MagicSphere(VT(POWERLEVEL,POWERLEVEL,POWERLEVEL)*2,35,RightArm.CFrame*CF(0,-2,0),"Really red",VT(0,0,0))
			CreateRing(VT(0,0,0),false,0,25,RightArm.CFrame*CF(0,-1.5,0)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/4,POWERLEVEL/4,0))
			CreateRing(VT(0,0,0),false,0,25,RightArm.CFrame*CF(0,-1.5,0)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/3,POWERLEVEL/3,0))
			local MARK = CreatePart(3, Effects, "Neon", 0, 0, "Institutional white", "BurnMark", VT(POWERLEVEL,0,POWERLEVEL)*2)
			MARK.CFrame = CF(POS+VT(AMOUNT,0,AMOUNT))
			table.insert(BURNMARKS,MARK)
			MakeForm(MARK,"Cyl")
			CreateRing(VT(0,0,0),false,0,25,CF(POS+VT(AMOUNT,0,AMOUNT))*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/5,POWERLEVEL/5,0))
			CreateRing(VT(0,0,0),false,0,25,CF(POS+VT(AMOUNT,0,AMOUNT))*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/4,POWERLEVEL/4,0))
			local distance = (RightArm.CFrame*CF(0,-2,0).p - POS+VT(AMOUNT,0,AMOUNT)).magnitude
			DEATHRAY1.Size          = Vector3.new(POWERLEVEL, distance, POWERLEVEL)
			DEATHRAY1.CFrame        = CFrame.new(RightArm.CFrame*CF(0,-2,0).p,POS+VT(AMOUNT,0,AMOUNT)) * CFrame.new(0, 0, -distance/2) * ANGLES(RAD(90),RAD(0),RAD(0))
			DEATHRAY2.Size          = Vector3.new(POWERLEVEL+0.1, distance, POWERLEVEL+0.1)
			DEATHRAY2.CFrame        = CFrame.new(RightArm.CFrame*CF(0,-2,0).p,POS+VT(AMOUNT,0,AMOUNT)) * CFrame.new(0, 0, -distance/2) * ANGLES(RAD(90),RAD(0),RAD(0))
			AMOUNT = AMOUNT - 1
		end
		local AMOUNT = POWERLEVEL * 25
		for i = 1, POWERLEVEL * 50 do
			Swait()
			MagicSphere(VT(POWERLEVEL,POWERLEVEL,POWERLEVEL)*2,35,RightArm.CFrame*CF(0,-2,0),"Institutional white",VT(0,0,0))
			CreateRing(VT(0,0,0),false,0,25,RightArm.CFrame*CF(0,-1.5,0)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/4,POWERLEVEL/4,0))
			CreateRing(VT(0,0,0),false,0,25,RightArm.CFrame*CF(0,-1.5,0)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Institutional red",VT(POWERLEVEL/3,POWERLEVEL/3,0))
			local MARK = CreatePart(3, Effects, "Neon", 0, 0, "Institutional white", "BurnMark", VT(POWERLEVEL,0,POWERLEVEL)*2)
			MARK.CFrame = CF(POS+VT(AMOUNT,0,-AMOUNT))
			table.insert(BURNMARKS,MARK)
			MakeForm(MARK,"Cyl")
			CreateRing(VT(0,0,0),false,0,25,CF(POS+VT(AMOUNT,0,-AMOUNT))*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/5,POWERLEVEL/5,0))
			CreateRing(VT(0,0,0),false,0,25,CF(POS+VT(AMOUNT,0,-AMOUNT))*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/4,POWERLEVEL/4,0))
			local distance = (RightArm.CFrame*CF(0,-2,0).p - POS+VT(AMOUNT,0,-AMOUNT)).magnitude
			DEATHRAY1.Size          = Vector3.new(POWERLEVEL, distance, POWERLEVEL)
			DEATHRAY1.CFrame        = CFrame.new(RightArm.CFrame*CF(0,-2,0).p,POS+VT(AMOUNT,0,-AMOUNT)) * CFrame.new(0, 0, -distance/2) * ANGLES(RAD(90),RAD(0),RAD(0))
			DEATHRAY2.Size          = Vector3.new(POWERLEVEL+0.1, distance, POWERLEVEL+0.1)
			DEATHRAY2.CFrame        = CFrame.new(RightArm.CFrame*CF(0,-2,0).p,POS+VT(AMOUNT,0,-AMOUNT)) * CFrame.new(0, 0, -distance/2) * ANGLES(RAD(90),RAD(0),RAD(0))
			AMOUNT = AMOUNT - 1
		end
		DEATHRAY1:remove()
		DEATHRAY2:remove()
		loopsound:remove()
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.2) * ANGLES(RAD(-65), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
		end
		RootPart.CFrame = STARTPOS
		for i=0, 0.1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, -1.2) * ANGLES(RAD(65), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.3, -1) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.3, -1) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 2 / Animation_Speed)
		end
		for i = 1, 10+(5*POWERLEVEL) do
			Swait()
			CreateRing(VT(0,0,0),false,0,5,CF(POS)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL*5,POWERLEVEL*5,0))
			CreateRing(VT(0,0,0),false,0,5,CF(POS)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL*15,POWERLEVEL*15,0))
		end
		local SOUND = CreateSound("314970772", Effects, 10, 1)
		CreateSound("414517163", Effects, 10, 1)
		IT("EchoSoundEffect",SOUND)
		MagicSphere(VT(0,0,0),35,CF(POS),"Institutional white",VT(POWERLEVEL,POWERLEVEL,POWERLEVEL))
		CreateDebreeRing(FLOOR,POS,25*POWERLEVEL,VT(25,25,25)*POWERLEVEL,3)
		CreateFlyingDebree(FLOOR,CF(POS),25,VT(4,4,4)*POWERLEVEL,3,25*POWERLEVEL)
		for i = 1, 25 do
			Swait()
			MagicSphere(VT(0,0,0),15,CF(POS),"Really black",VT(POWERLEVEL,POWERLEVEL,POWERLEVEL))
			CreateRing(VT(0,0,0.1),false,0,45,CF(HITPOS)*ANGLES(RAD(90),RAD(0),RAD(0)),"Institutional white",VT(POWERLEVEL*2,POWERLEVEL*2,0))
			killnearest(POS,POWERLEVEL*100,500)
			CreateRing(VT(0,0,0),false,0,15,CF(POS)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL*15,POWERLEVEL*15,0))
			CreateRing(VT(0,0,0),false,0,15,CF(POS)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL*25,POWERLEVEL*25,0))
		end
		for i = 1, 50 do
			Swait()
			for e=1,#BURNMARKS do
				if BURNMARKS[e]~=nil then
					local Thing=BURNMARKS[e]
					if Thing~=nil then
						local Part=Thing
						Part.Transparency = Part.Transparency + (1/50)
					end
				end
			end
		end
		for e=1,#BURNMARKS do
			if BURNMARKS[e]~=nil then
				local Thing=BURNMARKS[e]
				if Thing~=nil then
					local Part=Thing
					Part:remove()
				end
			end
		end
		ATTACK = false
		Rooted = false
		UNANCHOR = true
		RootPart.Anchored = false
		POWERLEVEL = 1
	end
end

function Taunt()
	ATTACK = true
	Rooted = true
	CreateSound("907330011", Head, 10, 1.1)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -0.8) * ANGLES(RAD(170), RAD(0), RAD(-30)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
	end
	for i=0, 2, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end

function BreakLimit()
	ATTACK = true
	Rooted = false
	UNANCHOR = false
	RootPart.Anchored = true
	for i=0, 5, 0.1 / Animation_Speed do
		Swait()
		RootPart.CFrame = RootPart.CFrame * CF(0,0.2,0)
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 * Player_Size, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 2 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 2 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 2 / Animation_Speed)
	end
	CreateSound("1368598393", Effects, 10, 1)
	for i=0, 2, 0.1 / Animation_Speed do
		Swait()
		local CFRAME = CF(Torso.Position)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)))
		MagicSphere(VT(0,0,0),15,CFRAME,"Really black",VT(0.1,0.1,5))
		MagicSphere(VT(0.1,0.1,0.1),15,CFRAME,"Institutional white",VT(0.1,0.1,5))
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 * Player_Size, 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(-75)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 2 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 2 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 2 / Animation_Speed)
	end
	CreateSound("1368583274", Effects, 10, 1)
	for i=0, 6, 0.1 / Animation_Speed do
		Swait()
		CreateRing(VT(45,5,0)*2,false,0,45,Torso.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(-1,0,0))
		CreateRing(VT(45,5,0)*3,false,0,45,Torso.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(-1,0,0)*3)
		local CFRAME = CF(Torso.Position)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)))
		MagicSphere(VT(0,0,0),15,CFRAME,"Really red",VT(0.1,0.1,55))
		MagicSphere(VT(0,0,0),15,CFRAME,"Really red",VT(2,2,2))
		MagicSphere(VT(0.1,0.1,0.1),15,CFRAME,"Really red",VT(0.1,0.1,55))
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 * Player_Size, 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(-75)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 2 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 2 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 2 / Animation_Speed)
	end
	CreateSound("907329532", Effects, 10, 1.1)
	Swait(175)
	CreateRing(VT(0,0,0),false,0,45,RootPart.CFrame*ANGLES(RAD(90),RAD(0),RAD(0)),"Really red",VT(7,7,0))
	CreateSound("1368605755", Effects, 10, 1)
	CreateSound("1368637781", Effects, 10, 1)
	MagicSphere(VT(0,0,0),45,Torso.CFrame,"Really red",VT(5,5,5))
	LIMITBROKEN = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		CreateRing(VT(0,0,0),false,0,45,Torso.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(4,4,0))
		CreateRing(VT(0,0,0),false,0,45,Torso.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(5,5,0))
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 * Player_Size, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 2 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-60), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 2 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-50)), 2 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(50)), 2 / Animation_Speed)
	end
	UNANCHOR = true
	RootPart.Anchored = false
	ATTACK = false
	Rooted = false
end

-- LIMIT BROKEN

function RivalingOverthrower2()
	if Mouse.Target.Parent ~= Character and Mouse.Target.Parent.Parent ~= Character and Mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
		local HITBODY = Mouse.Target.Parent
		local TORS = HITBODY:FindFirstChild("Torso") or HITBODY:FindFirstChild("UpperTorso")
		local HUMAN = Mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
		if TORS ~= nil and HUMAN ~= nil then
			ATTACK = true
			Rooted = false
			VanishPlayer()
			TORS.Anchored = true
			RootPart.CFrame = TORS.CFrame*CF(0,5,0)
			CreateSound("260411131", RootPart, 3, 1)
			for i = 1, 75 do
				Swait()
				CreateRing(VT(0,0,0),false,0,25,TORS.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/3,POWERLEVEL/3,0))
				CreateSound(HITWEAPONSOUNDS[MRANDOM(1,#HITWEAPONSOUNDS)], TORS, 10, 1)
				local CFRAME = CF(TORS.Position)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)))
				MagicSphere(VT(0,0,0),15,CFRAME,"Really black",VT(0.1,0.1,POWERLEVEL*5))
				MagicSphere(VT(0.1,0.1,0.1),15,CFRAME,"Institutional white",VT(0.1,0.1,POWERLEVEL*5))
				TORS.CFrame = TORS.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)))
			end
			RootPart.CFrame = CF(TORS.Position)*CF(MRANDOM(-45,45),45,MRANDOM(-45,45))
			Reappear()
			CreateSound("1368583274", RightArm, 10, 1)
			local ORB = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "Neon", VT(0,0,0))
			MakeForm(ORB,"Ball")
			ORB.Color = C3(0,0,0)
			ORB.CFrame = RightArm.CFrame * CF(0,-2,0)
			for i=0, 4, 0.1 / Animation_Speed do
				Swait()
				ORB.CFrame = RightArm.CFrame * CF(0,-2-(ORB.Size.Z/2),0)
				ORB.Size = ORB.Size + VT(0.03,0.03,0.03)
				CreateRing(VT(25,25,0),false,0,25,ORB.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(-1,-1,0))
				RootPart.CFrame = CF(RootPart.Position,TORS.Position)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-90)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
			end
			for i = 1, 5 do
				Swait()
				RootPart.CFrame = CF(RootPart.Position,TORS.Position)
				ORB.Size = ORB.Size * 0.8
			end
			local BEAM = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "Neon", VT(0,25,0))
			MakeForm(BEAM,"Ball")
			local BEAM2 = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "Neon", VT(0,1000,0))
			MakeForm(BEAM2,"Cyl")
			BEAM.CFrame = ORB.CFrame * CF(0,0,10)
			ORB.Color = BRICKC("Really red").Color
			for i = 1, 5 do
				Swait()
				CreateRing(VT(0,0,0.1),false,0,10,RightArm.CFrame*CF(0,-1,0)*ANGLES(RAD(90),RAD(0),RAD(0)),"Really red",VT(2,2,0))
				BEAM.CFrame = ORB.CFrame * CF(0,-12.5,0)
				BEAM.Size = BEAM.Size + VT(2,0,2)
				BEAM2.CFrame = ORB.CFrame * CF(0,-512.5,0)
				BEAM2.Size = BEAM2.Size + VT(2,0,2)
				RootPart.CFrame = CF(RootPart.Position,TORS.Position)
				ORB.Size = ORB.Size * 1.3
			end
			CreateSound("1368605755", Effects, 10, 1)
			HITBODY:BreakJoints()
			TORS.Anchored = false
			local POS = TORS.Position
			for i = 1, 25 do
				CreateRing(VT(0,0,0),false,0,25,TORS.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/3,POWERLEVEL/3,0))
				CreateRing(VT(0,0,0),false,0,25,TORS.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/4,POWERLEVEL/4,0))
			end
			for i=0, 2, 0.1 / Animation_Speed do
				Swait()
				killnearest(POS,15,700)
				CreateRing(VT(0,0,0.1),false,0,10,RightArm.CFrame*CF(0,-1,0)*ANGLES(RAD(90),RAD(0),RAD(0)),"Really red",VT(2,2,0))
				BEAM.CFrame = ORB.CFrame * CF(0,-12.5,0)
				BEAM2.CFrame = ORB.CFrame * CF(0,-512.5,0)
				ORB.CFrame = RightArm.CFrame * CF(0,-2-(ORB.Size.Z/2),0)
				RootPart.CFrame = CF(RootPart.Position,POS)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-90)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
			end
			for i = 1, 5 do
				Swait()
				BEAM.CFrame = ORB.CFrame * CF(0,-12.5,0)
				BEAM.Size = BEAM.Size - VT(2,0,2)
				BEAM2.CFrame = ORB.CFrame * CF(0,-512.5,0)
				BEAM2.Size = BEAM2.Size - VT(2,0,2)
				RootPart.CFrame = CF(RootPart.Position,TORS.Position)
				ORB.Size = ORB.Size * 0.8
			end
			turnto(POS)
			ORB:remove()
			BEAM:remove()
			BEAM2:remove()
			ATTACK = false
			Rooted = false
		end
	end
end

function ChunkChuck2()
	if HITFLOOR ~= nil then
		ATTACK = true
		Rooted = false
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(45)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(150), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-25)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
		end
		local DIST = (RootPart.Position - HITPOS).Magnitude
		RootPart.CFrame = RootPart.CFrame * CF(0,-(DIST-3),0)
		for i=0, 0.1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(90), RAD(0), RAD(90)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-90)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
		end
		CreateDebreeRing(HITFLOOR,HITPOS,15,VT(15,15,15))
		CreateFlyingDebree(HITFLOOR,CF(HITPOS),25,VT(2,2,2),3,150)
		local CHUNK = CreatePart(3, Effects, "Neon", 0, 0, "Peal", "Debree", VT(25,25,25))
		CHUNK.Color = HITFLOOR.Color
		CHUNK.Material = HITFLOOR.Material
		CHUNK.CFrame = RootPart.CFrame*CF(0,-25,-0.5)
		CreateSound("260411131", CHUNK, 10, 1)
		CreateSound("289842971", Torso, 3, 1)	
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(90), RAD(0), RAD(90)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-90)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
		end
		RootPart.CFrame = RootPart.CFrame * CF(0,(DIST-3),0)
		CHUNK.CFrame = Torso.CFrame*CF(0.7,15,0)
		repeat
			Swait()
			RootPart.CFrame = CF(RootPart.Position,Mouse.Hit.p)
			CHUNK.CFrame = Torso.CFrame*CF(0.7,15,0)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(45)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(150), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-25)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
		until HOLD == true
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			CHUNK.CFrame = Torso.CFrame*CF(0.7,15,0)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-35), RAD(0), RAD(45)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-25)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
		end
		coroutine.resume(coroutine.create(function()
			local COLLISION = false
			CHUNK.CFrame = RootPart.CFrame
			for i = 1, 300 do
				CHUNK.CFrame = CHUNK.CFrame * CF(0,0,-5)
				killnearest(CHUNK.Position,CHUNK.Size.Z/1.8,15)
				local TRAIL = CHUNK:Clone()
				TRAIL.CanCollide = false
				TRAIL.Transparency = 0.9
				TRAIL.Parent = Effects
				TRAIL.CFrame = CHUNK.CFrame
				coroutine.resume(coroutine.create(function()
					for i = 1, 10 do
						Swait()
						TRAIL.Transparency = TRAIL.Transparency + (0.1/10)
					end
					TRAIL:remove()
				end))
				local HIT = Raycast(CHUNK.Position, CHUNK.CFrame.lookVector, CHUNK.Size.Z/2, Character)
				if HIT ~= nil then
					COLLISION = true
					break
				end
			end
			CHUNK:remove()
			if COLLISION == true then
				CreateFlyingDebree(CHUNK,CF(CHUNK.Position),25,VT(10,10,10),3,MRANDOM(150,250))
				killnearest(CHUNK.Position,CHUNK.Size.Z,45)
			end
		end))
		turnto(CHUNK.Position)
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(45)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(25), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-25)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(25)), 2 / Animation_Speed)
		end
		ATTACK = false
		Rooted = false
	end
end

function XEvent2()
	local FLOOR,HITPOS = Raycast(RootPart.Position, CF(RootPart.Position,RootPart.Position+VT(0,-1,0)).lookVector, 100000, Character)
	if FLOOR then
		local BURNMARKS = {}
		local POS = HITPOS
		ATTACK = true
		Rooted = false
		local AMOUNT = 200
		for i=0, 3, 0.1 / Animation_Speed do
			Swait()
			RootPart.CFrame = CF(RootPart.Position,POS+VT(AMOUNT,0,AMOUNT))*CF(0,0,2)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(45), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(45), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
		end
		CreateSound("1368583274", Effects, 10, 0.5)
		local ORB = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "Neon", VT(0,0,0))
		MakeForm(ORB,"Ball")
		ORB.Color = C3(0,0,0)
		ORB.CFrame = RightArm.CFrame * CF(0,-2,0)
		for i=0, 12, 0.1 / Animation_Speed do
			Swait()
			ORB.CFrame = RightArm.CFrame * CF(0,-2-(ORB.Size.Z/2),0)
			ORB.Size = ORB.Size + VT(0.03,0.03,0.03)
			CreateRing(VT(250,250,0),false,0,25,ORB.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(-10,-10,0))
			CreateRing(VT(250,250,0),false,0,25,ORB.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(-10,-10,0))
			RootPart.CFrame = CF(RootPart.Position,POS+VT(AMOUNT,0,AMOUNT))
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-90)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
		end
		for i = 1, 50 do
			Swait()
			ORB.Size = ORB.Size * 0.9
			ORB.CFrame = RightArm.CFrame * CF(0,-2-(ORB.Size.Z/2),0)
		end
		local BEAM = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "Neon", VT(0,100,0))
		MakeForm(BEAM,"Ball")
		local BEAM2 = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "Neon", VT(0,1000,0))
		MakeForm(BEAM2,"Cyl")
		BEAM.CFrame = ORB.CFrame * CF(0,0,10)
		ORB.Color = BRICKC("Really red").Color
		CreateSound("1368598393", Effects, 10, 0.3)
		CreateSound("1368605755", Effects, 10, 0.3)
		CreateSound("1368637781", Effects, 10, 0.3)
		for i = 1, 10 do
			local COLOR = C3(0,0,0)
			ORB.Size = VT(10,10,10)
			ORB.CFrame = RightArm.CFrame * CF(0,-2-(ORB.Size.Z/2),0)
			CreateRing(VT(0,0,0.1),false,0,10,RightArm.CFrame*CF(0,-1,0)*ANGLES(RAD(90),RAD(0),RAD(0)),"Really red",VT(10,10,0))
			CreateRing(VT(0,0,0.1),false,0,10,RightArm.CFrame*CF(0,-1,0)*ANGLES(RAD(90),RAD(0),RAD(0)),"Really red",VT(20,20,0))
			BEAM.CFrame = ORB.CFrame * CF(0,-50-(ORB.Size.Z/3),0)
			BEAM.Size = BEAM.Size + VT(4,0,4)
			BEAM2.CFrame = ORB.CFrame * CF(0,-550-(ORB.Size.Z/3),0)
			BEAM2.Size = BEAM2.Size + VT(4,0,4)
			BEAM.Color = COLOR
			ORB.Color = COLOR
			BEAM2.Color = COLOR
		end
		for i = 1, 400 do
			Swait()
			local COLOR = C3(1,1,1)
			BEAM.Color = COLOR
			ORB.Color = COLOR
			BEAM2.Color = COLOR
			ORB.CFrame = RightArm.CFrame * CF(0,-2-(ORB.Size.Z/2),0)
			BEAM.CFrame = ORB.CFrame * CF(0,-50-(ORB.Size.Z/3),0)
			BEAM2.CFrame = ORB.CFrame * CF(0,-550-(ORB.Size.Z/3),0)
			RootPart.CFrame = CF(RootPart.Position,POS+VT(AMOUNT,0,AMOUNT))
			CreateRing(VT(0,0,0),false,0,25,RightArm.CFrame*CF(0,-1.5,0)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/40,POWERLEVEL/40,0))
			CreateRing(VT(0,0,0),false,0,25,RightArm.CFrame*CF(0,-1.5,0)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/30,POWERLEVEL/30,0))
			local MARK = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "BurnMark", VT(15,0,15)*2)
			MARK.CFrame = CF(POS+VT(AMOUNT,0,AMOUNT))
			table.insert(BURNMARKS,MARK)
			MakeForm(MARK,"Cyl")
			CreateRing(VT(0,0,0),false,0,25,CF(POS+VT(AMOUNT,0,AMOUNT))*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/50,POWERLEVEL/50,0))
			CreateRing(VT(0,0,0),false,0,25,CF(POS+VT(AMOUNT,0,AMOUNT))*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/40,POWERLEVEL/40,0))
			local distance = (RightArm.CFrame*CF(0,-2,0).p - POS+VT(AMOUNT,0,AMOUNT)).magnitude
			AMOUNT = AMOUNT - 1
			--CreateFlyingDebree(FLOOR,CF(POS+VT(AMOUNT,0,AMOUNT)),1,VT(5,5,5),1,150)
		end
		local AMOUNT = 200
		for i = 1, 400 do
			Swait()
			local COLOR = C3(1,1,1)
			BEAM.Color = COLOR
			ORB.Color = COLOR
			BEAM2.Color = COLOR
			ORB.CFrame = RightArm.CFrame * CF(0,-2-(ORB.Size.Z/2),0)
			BEAM.CFrame = ORB.CFrame * CF(0,-50-(ORB.Size.Z/3),0)
			BEAM2.CFrame = ORB.CFrame * CF(0,-550-(ORB.Size.Z/3),0)
			RootPart.CFrame = CF(RootPart.Position,POS+VT(AMOUNT,0,-AMOUNT))
			CreateRing(VT(0,0,0),false,0,25,RightArm.CFrame*CF(0,-1.5,0)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/40,POWERLEVEL/40,0))
			CreateRing(VT(0,0,0),false,0,25,RightArm.CFrame*CF(0,-1.5,0)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/30,POWERLEVEL/30,0))
			local MARK = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "BurnMark", VT(15,0,15)*2)
			MARK.CFrame = CF(POS+VT(AMOUNT,0,-AMOUNT))
			table.insert(BURNMARKS,MARK)
			MakeForm(MARK,"Cyl")
			CreateRing(VT(0,0,0),false,0,25,CF(POS+VT(AMOUNT,0,-AMOUNT))*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/50,POWERLEVEL/50,0))
			CreateRing(VT(0,0,0),false,0,25,CF(POS+VT(AMOUNT,0,-AMOUNT))*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(POWERLEVEL/40,POWERLEVEL/40,0))
			local distance = (RightArm.CFrame*CF(0,-2,0).p - POS+VT(AMOUNT,0,-AMOUNT)).magnitude
			AMOUNT = AMOUNT - 1
			--CreateFlyingDebree(FLOOR,CF(POS+VT(AMOUNT,0,-AMOUNT)),1,VT(5,5,5),1,150)
		end
		for i = 1, 40 do
			Swait()
			local COLOR = C3(0,0,0)
			BEAM.CFrame = ORB.CFrame * CF(0,-50-(ORB.Size.Z/3),0)
			BEAM.Size = BEAM.Size - VT(2,0,2)
			BEAM2.CFrame = ORB.CFrame * CF(0,-550-(ORB.Size.Z/3),0)
			BEAM2.Size = BEAM2.Size - VT(2,0,2)
			ORB.Size = ORB.Size * 0.9
			BEAM.Color = COLOR
			ORB.Color = COLOR
			BEAM2.Color = COLOR
		end
		ORB:remove()
		BEAM:remove()
		BEAM2:remove()
		CreateSound("1368583274", Effects, 10, 0.375)
		local ORB = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "Neon", VT(0,0,0))
		MakeForm(ORB,"Ball")
		ORB.Color = C3(0,0,0)
		ORB.CFrame = RightArm.CFrame * CF(0,-2,0)
		for i=0, 18, 0.1 / Animation_Speed do
			Swait()
			ORB.CFrame = RightArm.CFrame * CF(0,-2-(ORB.Size.Z/2),0)
			ORB.Size = ORB.Size + VT(0.03,0.03,0.03)
			CreateRing(VT(450,450,0),false,0,45,ORB.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(-10,-10,0))
			CreateRing(VT(450,450,0),false,0,45,ORB.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(-10,-10,0))
			RootPart.CFrame = CF(RootPart.Position,POS)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-90)), 2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 2 / Animation_Speed)
		end
		for i = 1, 50 do
			Swait()
			ORB.Size = ORB.Size * 0.9
			ORB.CFrame = RightArm.CFrame * CF(0,-2-(ORB.Size.Z/2),0)
		end
		local BEAM = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "Neon", VT(0,100,0))
		MakeForm(BEAM,"Ball")
		local BEAM2 = CreatePart(3, Effects, "Neon", 0, 0, "Really red", "Neon", VT(0,1000,0))
		MakeForm(BEAM2,"Cyl")
		BEAM.CFrame = ORB.CFrame * CF(0,0,10)
		ORB.Color = BRICKC("Institutional white").Color
		CreateSound("1368598393", Effects, 10, 1)
		CreateSound("1368605755", Effects, 10, 1)
		CreateSound("1368637781", Effects, 10, 1)
		CreateSound("314970772", Effects, 10, 1)
		for i = 1, 60 do
			Swait()
			MagicSphere(VT(0,0,0),25,CF(POS),"Really red",VT(15,15,15))
			local COLOR = C3(0,0,0)
			ORB.Size = VT(10,10,10)
			ORB.CFrame = RightArm.CFrame * CF(0,-2-(ORB.Size.Z/2),0)
			CreateRing(VT(0,0,0.1),false,0,10,RightArm.CFrame*CF(0,-1,0)*ANGLES(RAD(90),RAD(0),RAD(0)),"Really red",VT(10,10,0))
			CreateRing(VT(0,0,0.1),false,0,10,RightArm.CFrame*CF(0,-1,0)*ANGLES(RAD(90),RAD(0),RAD(0)),"Really red",VT(20,20,0))
			BEAM.CFrame = ORB.CFrame * CF(0,-50-(ORB.Size.Z/3),0)
			BEAM.Size = BEAM.Size + VT(6,0,6)
			BEAM2.CFrame = ORB.CFrame * CF(0,-550-(ORB.Size.Z/3),0)
			BEAM2.Size = BEAM2.Size + VT(6,0,6)
			BEAM.Color = COLOR
			ORB.Color = COLOR
			BEAM2.Color = COLOR
		end
		for _, c in pairs(workspace:GetChildren()) do
			if c ~= Character then
				if c.ClassName == "Model" then
					c:BreakJoints()
					for _, g in pairs(c:GetChildren()) do
						if g ~= Character then
							if g.ClassName == "Part" then
								g.Anchored = false
								g.Velocity = VT(MRANDOM(-150,150),MRANDOM(-150,150),MRANDOM(-150,150))
							end
						end
					end
				elseif c.ClassName == "Folder" then
					for _, g in pairs(c:GetChildren()) do
						if g ~= Character then
							if g.ClassName == "Part" then
								g.Anchored = false
								g.Velocity = VT(MRANDOM(-150,150),MRANDOM(-150,150),MRANDOM(-150,150))
							end
						end
					end
				elseif c.ClassName == "Part" then
					c.Anchored = false
					c.Velocity = VT(MRANDOM(-150,150),MRANDOM(-150,150),MRANDOM(-150,150))
				end
			end
		end
		for e=1,#BURNMARKS do
			if BURNMARKS[e]~=nil then
				local Thing=BURNMARKS[e]
				if Thing~=nil then
					local Part=Thing
					Part:remove()
				end
			end
		end
		ORB:remove()
		BEAM:remove()
		BEAM2:remove()
		Swait(100)
		for i = 1, 60 do
			Swait()
		end
		ATTACK = false
		Rooted = false
	end
end

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseDown(Mouse)
	HOLD = true
	if ATTACK == false then
	end
end

function CastProperRay(StartPos, Vec, Length, Ignore)
	local Direction = CFrame.new(StartPos, Vec).lookVector
	local Ignore = ((type(Ignore) == "table" and Ignore) or {Ignore})
	local RayHit, RayPos, RayNormal = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, Direction * Length), Ignore)
	return RayHit, RayPos, RayNormal
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if LIMITBROKEN == false then
		if Key == "t" and ATTACK == false then
			Taunt()
		end
	
		if Key == "z" and ATTACK == false then
			Warp()
		end
	
		if Key == "b" and ATTACK == false then
			RivalingOverthrower()
		end
	
		if Key == "c" and ATTACK == false then
			ChunkChuck()
		end
	
		if Key == "v" and ATTACK == false then
			if POWERLEVEL < 5 then
				Boost()
			end
		end

		if Key == "q" and ATTACK == false then
			BreakLimit()
		end
	
		if Key == "x" and ATTACK == false then
			XEvent()
		end
	else
		if Key == "b" and ATTACK == false then
			RivalingOverthrower2()
		end

		if Key == "c" and ATTACK == false then
			ChunkChuck2()
		end

		if Key == "x" and ATTACK == false then
			XEvent2()
		end

		if Key == "q" and ATTACK == false then
			LIMITBROKEN = false
			POWERLEVEL = 1
		end

		if Key == "w" and ATTACK == false then
			FLIGHT = true
			repeat
				local RayHit, RayPos = CastProperRay(RootPart.Position, Mouse.Hit.p, 5, {workspace})
				RootPart.CFrame = CFrame.new(RayPos,VT(Mouse.Hit.p.X,RootPart.Position.Y,Mouse.Hit.p.Z)) * CFrame.new(0, 0, 0)	
				Swait()	
			until KEYHOLD == false
			FLIGHT = false
		end
		if Key == "s" and ATTACK == false then
			FLIGHT = true
			repeat
				local RayHit1, RayPos1 = CastProperRay(Mouse.Hit.p, RootPart.Position, 10000, {workspace})
				local RayHit, RayPos = CastProperRay(RootPart.Position, RayPos1, 1, {workspace})
				RootPart.CFrame = CFrame.new(RayPos,VT(Mouse.Hit.p.X,RootPart.Position.Y,Mouse.Hit.p.Z)) * CFrame.new(0, 0, 0)	
				Swait()	
			until KEYHOLD == false
			FLIGHT = false
		end
		if Key == "a" and ATTACK == false then
			FLIGHT = true
			repeat
				local RayHit, RayPos = CastProperRay(RootPart.Position, RootPart.CFrame*CF(-1,0,0).p, 1, {workspace})
				RootPart.CFrame = CFrame.new(RayPos,VT(Mouse.Hit.p.X,RootPart.Position.Y,Mouse.Hit.p.Z)) * CFrame.new(0, 0, 0)	
				Swait()	
			until KEYHOLD == false
			FLIGHT = false
		end
		if Key == "d" and ATTACK == false then
			FLIGHT = true
			repeat
				local RayHit, RayPos = CastProperRay(RootPart.Position, RootPart.CFrame*CF(1,0,0).p, 1, {workspace})
				RootPart.CFrame = CFrame.new(RayPos,VT(Mouse.Hit.p.X,RootPart.Position.Y,Mouse.Hit.p.Z)) * CFrame.new(0, 0, 0)	
				Swait()	
			until KEYHOLD == false
			FLIGHT = false
		end
	end
end

function KeyUp(Key)
	KEYHOLD = false
end

	Mouse.Button1Down:connect(function(NEWKEY)
		MouseDown(NEWKEY)
	end)
	Mouse.Button1Up:connect(function(NEWKEY)
		MouseUp(NEWKEY)
	end)
	Mouse.KeyDown:connect(function(NEWKEY)
		KeyDown(NEWKEY)
	end)
	Mouse.KeyUp:connect(function(NEWKEY)
		KeyUp(NEWKEY)
	end)

--//=================================\\
--\\=================================//


function unanchor()
	if UNANCHOR == true then
		g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" and g[i].Name ~= "HumanoidRootPart" then
				g[i].Anchored = false
			end
			if g[i].ClassName == "Accessory" then
				g[i].Handle.Anchored = false
			end
		end
		if LIMITBROKEN == false then
			RootPart.Anchored = false
		end
	end
end


--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

Speed = 12
Humanoid.JumpPower = 200

local FF = IT("ForceField",Character)
FF.Visible = false

while true do
	Swait()
	ANIMATE.Parent = nil
	local IDLEANIMATION = Humanoid:LoadAnimation(ROBLOXIDLEANIMATION)
	IDLEANIMATION:Play()
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local LV = Torso.CFrame:pointToObjectSpace(Torso.Velocity - Torso.Position)
	if LIMITBROKEN == false then
		HITFLOOR, HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4 * Player_Size, Character)
		if HITFLOOR ~= nil then
			if HITFLOOR.CanCollide == false then
				HITFLOOR = nil
			end
		end
		local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
		if ANIM == "Walk" and TORSOVELOCITY > 1 then
			RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.15 * COS(SINE / (WALKSPEEDVALUE / 2)) * Player_Size) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 0.875 * Player_Size - 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, -0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 0.875 * Player_Size + 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, 0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) then
			RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		end
		if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
			ANIM = "Jump"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 * Player_Size, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 2 / Animation_Speed)
		    end
		elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
			ANIM = "Fall"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 2 / Animation_Speed)
			end
		elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
			if ANIM == "Fall" then
				Rooted = true
				CreateSound("289842971", Torso, 3, 1)
				Humanoid.WalkSpeed = 0
				CreateFlyingDebree(HITFLOOR,CF(RootPart.Position+VT(0,-3,0)),5,VT(1.5,1.5,1.5),45,50)
				CreateWave(VT(0,0,0),15,CF(HITPOS),true,2,"Really black",VT(1,0.1,1))
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -1.5) * ANGLES(RAD(0), RAD(-5), RAD(0)), 2 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0, -0.3) * ANGLES(RAD(0), RAD(0), RAD(8)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5, -0.75) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 2 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.4) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(90)), 2 / Animation_Speed)
				end
				Rooted = false
			end
			ANIM = "Idle"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.2 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(15), RAD(0), RAD(0 - 2.5 * SIN(SINE / 12))), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0 + 2.5 * SIN(SINE / 12))), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0, -0.5) * ANGLES(RAD(140 + 2.5 * SIN(SINE / 12)), RAD(15), RAD(0)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0, -0.5) * ANGLES(RAD(140 + 2.5 * SIN(SINE / 12)), RAD(-15), RAD(0)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-15 - 2.5 * SIN(SINE / 12))), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(-35 - 2.5 * SIN(SINE / 12))), 2 / Animation_Speed)
			end
		elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
			if ANIM == "Fall" then
				Rooted = true
				CreateSound("289842971", Torso, 3, 1)	
				Humanoid.WalkSpeed = 0
				CreateFlyingDebree(HITFLOOR,CF(RootPart.Position+VT(0,-3,0)),5,VT(1.5,1.5,1.5),45,50)
				CreateWave(VT(0,0,0),15,CF(HITPOS),true,2,"Really black",VT(1,0.1,1))
				for i=0, 1, 0.1 / Animation_Speed do
					Swait()
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -1.5) * ANGLES(RAD(0), RAD(-5), RAD(0)), 2 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0, -0.3) * ANGLES(RAD(0), RAD(0), RAD(8)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 2 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, 0.5, -0.75) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 2 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.4) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(90)), 2 / Animation_Speed)
				end
				Rooted = false
			end
			ANIM = "Walk"
			WALK = WALK + 1 / Animation_Speed
			if WALK >= 15 - (5 * (Humanoid.WalkSpeed / 16 / Player_Size)) then
				WALK = 0
				if WALKINGANIM == true then
					WALKINGANIM = false
				elseif WALKINGANIM == false then
					WALKINGANIM = true
				end
			end
			--RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 0.875 * Player_Size - 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, -0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			--LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 0.875 * Player_Size + 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, 0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(2 - 1 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(30 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-30 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
			end
		end
		if ATTACK == false and POWERLEVEL > 2 then
			killnearest(Torso.Position,POWERLEVEL*2,15)
		end
		if sick.SoundId ~= "rbxassetid://1057854857" then
			sick.SoundId = "rbxassetid://1057854857"
			sick.Volume = 5
			sick:Play()
		end
		sick.Pitch = (1-((POWERLEVEL-1))/15)
		SKILL6TEXT.Text = "Power level: ["..POWERLEVEL.."]"
	else
		VALUE2 = false
		if ATTACK == false and POWERLEVEL > 2 then
			killnearest(Torso.Position,15,15)
		end
		local RANDOM = MRANDOM(1,4)
		if MRANDOM(1,5) == 1 then
			CreateRing(VT(15,15,0)*RANDOM,false,0,15,CF(Torso.Position)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(-1,-1,0)*RANDOM)
		end
		if MRANDOM(1,5) == 1 then
			CreateRing(VT(15,15,0)*RANDOM,false,0,15,CF(Torso.Position)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Really red",VT(-1,-1,0)*RANDOM)
		end
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		POWERLEVEL = 100
		RootPart.Anchored = true
		if FLIGHT == false then
			ANIM = "Levitate"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(25)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-25), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 2 / Animation_Speed)
			end
		else
			ANIM = "Fly"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(25), RAD(0), RAD(0)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-15), RAD(0), RAD(15)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-15), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(-10), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-35), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 2 / Animation_Speed)
			end
		end
		SKILL6TEXT.Text = "Power level: ["..MRANDOM(1,9)..MRANDOM(1,9)..MRANDOM(1,9)..MRANDOM(1,9)..MRANDOM(1,9).."]"
		HITFLOOR, HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 75, Character)
		if sick.SoundId ~= "rbxassetid://1100698694" then
			sick.SoundId = "rbxassetid://1100698694"
			sick.Volume = 5
			sick:Play()
			sick.Pitch = 1
		end
	end
	unanchor()
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
	if Rooted == false then
		Disable_Jump = false
		if ANIM == "Jump" or ANIM == "Fall" then
			Humanoid.WalkSpeed = Speed*3
		else
			Humanoid.WalkSpeed = Speed
		end
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	q = Character:GetChildren()
	for u = 1, #q do
		if q[u].ClassName == "Accessory" or q[u].ClassName == "Hat" then
			if q[u].Handle:FindFirstChild("PE") == nil then
				particles(q[u].Handle)
			elseif q[u].Handle:FindFirstChild("PE") then
				if LIMITBROKEN == false then
					local EyeSizes={
						NumberSequenceKeypoint.new(0,POWERLEVEL/2,0),
						NumberSequenceKeypoint.new(1,0,0)
					}
					q[u].Handle.PE.Acceleration = Vector3.new(0,75*POWERLEVEL/2,0)
					q[u].Handle.PE.Speed = NumberRange.new(POWERLEVEL)
					q[u].Handle.PE.Size=NumberSequence.new(EyeSizes)
				else
					local EyeSizes={
						NumberSequenceKeypoint.new(0,4,0),
						NumberSequenceKeypoint.new(1,0,0)
					}
					q[u].Handle.PE.Acceleration = Vector3.new(0,100,0)
					q[u].Handle.PE.Speed = NumberRange.new(25)
					q[u].Handle.PE.Size=NumberSequence.new(EyeSizes)
				end
			end
		elseif q[u].ClassName == "Part" and q[u].Name ~= "HumanoidRootPart" then
			if q[u]:FindFirstChild("PE") == nil then
				particles(q[u])
			elseif q[u]:FindFirstChild("PE") then
				if LIMITBROKEN == false then
					local EyeSizes={
						NumberSequenceKeypoint.new(0,POWERLEVEL/2,0),
						NumberSequenceKeypoint.new(1,0,0)
					}
					q[u].PE.Acceleration = Vector3.new(0,75*POWERLEVEL/2,0)
					q[u].PE.Speed = NumberRange.new(POWERLEVEL)
					q[u].PE.Size=NumberSequence.new(EyeSizes)
				else
					local EyeSizes={
						NumberSequenceKeypoint.new(0,4,0),
						NumberSequenceKeypoint.new(1,0,0)
					}
					q[u].PE.Acceleration = Vector3.new(0,100,0)
					q[u].PE.Speed = NumberRange.new(25)
					q[u].PE.Size=NumberSequence.new(EyeSizes)
				end
			end
		end
	end
	script.Parent = PlayerGui
	if VALUE2 == false then
		if HITFLOOR ~= nil then
			CreateRing(VT(0,0,0.1),false,0,15,CF(HITPOS)*ANGLES(RAD(90),RAD(0),RAD(0)),"Really red",VT(POWERLEVEL/3,POWERLEVEL/3,0))
		end
		Speed = 12
		Character.Parent = workspace
		Weapon.Parent = Character
	elseif VALUE2 == true then
		Speed = 45
		Character.Parent = Cam
		Weapon.Parent = workspace
	end
	Effects.Parent = Weapon
	FF.Parent = Character
	local MATHS = {"0","1"}
	Humanoid.Name = MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]
	Humanoid.PlatformStand = false
	sick.Parent = Character
end

--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--
