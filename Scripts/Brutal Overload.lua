-------------------
--Brutal Overlord--
---------------------------------
--By CKbackup (Sugarie Saffron)--
---------------------------------

wait(1/60)
Effects = { }
local Player = game:service'Players'.localPlayer
local chara = Player.Character
local Humanoid = chara:FindFirstChildOfClass("Humanoid")
local Mouse = Player:GetMouse()
local LeftArm = chara["Left Arm"]
local RightArm = chara["Right Arm"]
local LeftLeg = chara["Left Leg"]
local RightLeg = chara["Right Leg"]
local Head = chara.Head
local Torso = chara.Torso
local RootPart = chara.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local attack = false
local Anim = 'Idle'
local attacktype = 1
local delays = false
local play = true
local targetted = nil
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local doe = 0
local heddo = nil
local grabhead = false
local armo = nil
local grabhand = false
local Create = LoadLibrary("RbxUtility").Create
Humanoid.WalkSpeed = 8



Humanoid.Animator.Parent = nil
chara.Animate.Parent = nil

local newMotor = function(part0, part1, c0, c1)
	local w = Create('Motor'){
		Parent = part0,
		Part0 = part0,
		Part1 = part1,
		C0 = c0,
		C1 = c1,
	}
	return w
end

function clerp(a, b, t)
	return a:lerp(b, t)
end

RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

local RW = newMotor(Torso, RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0)) 
local LW = newMotor(Torso, LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
local RH = newMotor(Torso, RightLeg, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))
local LH = newMotor(Torso, LeftLeg, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))
RootJoint.C1 = CFrame.new(0, 0, 0)
RootJoint.C0 = CFrame.new(0, 0, 0)
Torso.Neck.C1 = CFrame.new(0, 0, 0)
Torso.Neck.C0 = CFrame.new(0, 1.5, 0)


local rarmc1 = RW.C1
local larmc1 = LW.C1
local rlegc1 = RH.C1
local llegc1 = LH.C1

local resetc1 = false

function PlayAnimationFromTable(table, speed, bool)
	RootJoint.C0 = clerp(RootJoint.C0, table[1], speed) 
	Torso.Neck.C0 = clerp(Torso.Neck.C0, table[2], speed) 
	RW.C0 = clerp(RW.C0, table[3], speed) 
	LW.C0 = clerp(LW.C0, table[4], speed) 
	RH.C0 = clerp(RH.C0, table[5], speed) 
	LH.C0 = clerp(LH.C0, table[6], speed) 
	if bool == true then
		if resetc1 == false then
			resetc1 = true
			RootJoint.C1 = RootJoint.C1
			Torso.Neck.C1 = Torso.Neck.C1
			RW.C1 = rarmc1
			LW.C1 = larmc1
			RH.C1 = rlegc1
			LH.C1 = llegc1
		end
	end
end


ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.03333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if tf >= frame then
    if allowframeloss then
      script.Heartbeat:Fire()
      lastframe = tick()
    else
      for i = 1, math.floor(tf / frame) do
        script.Heartbeat:Fire()
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
function swait(num)
  if num == 0 or num == nil then
    ArtificialHB.Event:wait()
  else
    for i = 0, num do
      ArtificialHB.Event:wait()
    end
  end
end

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	

CFuncs = {	
	["Part"] = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part"){
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material,
			}
			RemoveOutlines(Part)
			return Part
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
	
	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};
	
	["Weld"] = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};
	
	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			return fp
		end;
	};

	CreateTemplate = {
	
	};
}


function so(id,par,pit,vol)
  local sou = Instance.new("Sound", par or workspace)
  if par == chara then
    sou.Parent = chara.Torso
  end
  sou.Volume = vol
  sou.Pitch = pit or 1
  sou.SoundId = "rbxassetid://" .. id
  sou.PlayOnRemove = true
  sou:Destroy()
end

New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

function createrainbow(part,size,trans,life,face,speed,accel,velsp,lock,name)
local fira = Instance.new("ParticleEmitter",part)
fira.Name = name
fira.Color = ColorSequence.new(Color3.new(0,0,0))
fira.Size = size
fira.Texture = "rbxasset://textures/particles/fire_main.dds"
fira.Transparency = trans
fira.Lifetime = life
fira.EmissionDirection = face
fira.Rate = 10000
fira.RotSpeed = NumberRange.new(100)
fira.Rotation = NumberRange.new(0,360)
fira.Speed = speed
fira.VelocitySpread = velsp
fira.Acceleration = accel
fira.LockedToPart = lock
return fira
end

Wings = New("Model",chara,"Wings",{})
MainPart = New("Part",Wings,"MainPart",{Transparency = 1,Transparency = 1,Size = Vector3.new(2, 2, 1),CFrame = CFrame.new(67.400032, 1.00001299, -47.2999992, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = Torso,})
Wing1Part = New("Part",Wings,"Wing1Part",{Transparency = 1,CanCollide=true,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(68.2041626, 2.02130413, -46.7787056, 0.866025448, 0.35355404, 0.35355413, -0.353553772, 0.933016062, -0.0669873655, -0.353553891, -0.0669873059, 0.933015943),})
createrainbow(Wing1Part,NumberSequence.new(.5,1),NumberSequence.new(0),NumberRange.new(1),"Back",NumberRange.new(5),Vector3.new(0,10,0),0,true,"Firea")
Weld = New("ManualWeld",Wing1Part,"Weld",{Part0 = Wing1Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.866025448, -0.353553772, -0.353553891, 0.35355404, 0.933016062, -0.0669873059, 0.35355413, -0.0669873655, 0.933015943),C1 = CFrame.new(0.804130554, 1.02129114, 0.52129364, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Wing2Part = New("Part",Wings,"Wing2Part",{Transparency = 1,CanCollide=true,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(70.4018326, 6.17824459, -42.6217613, 0.866025448, -0.433013618, 0.250000477, 0.353553772, 0.176777452, -0.918561935, 0.353553891, 0.883886695, 0.306187093),})
createrainbow(Wing2Part,NumberSequence.new(1,0),NumberSequence.new(0),NumberRange.new(1.5),"Back",NumberRange.new(10),Vector3.new(0,10,0),0,true,"Firea")
Weld = New("ManualWeld",Wing2Part,"Weld",{Part0 = Wing2Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.866025448, 0.353553772, 0.353553891, -0.433013618, 0.176777452, 0.883886695, 0.250000477, -0.918561935, 0.306187093),C1 = CFrame.new(3.00180054, 5.17823172, 4.67823792, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Wing2Part = New("Part",Wings,"Wing2Part",{Transparency = 1,CanCollide=true,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(70.4018326, 6.17824459, -42.6217613, 0.866025448, -0.482963979, 0.12940979, 0.353553772, 0.408495188, -0.841509461, 0.353553891, 0.774522126, 0.524520695),})
createrainbow(Wing2Part,NumberSequence.new(1,0),NumberSequence.new(0),NumberRange.new(1.5),"Back",NumberRange.new(10),Vector3.new(0,10,0),0,true,"Firea")
Weld = New("ManualWeld",Wing2Part,"Weld",{Part0 = Wing2Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.866025448, 0.353553772, 0.353553891, -0.482963979, 0.408495188, 0.774522126, 0.12940979, -0.841509461, 0.524520695),C1 = CFrame.new(3.00180054, 5.17823172, 4.67823792, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Wing2Part = New("Part",Wings,"Wing2Part",{Transparency = 1,CanCollide=true,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(70.4018326, 6.17824459, -42.6217613, 0.866025448, -0.500001192, 3.06954462e-12, 0.353553772, 0.612374902, -0.707109571, 0.353553891, 0.61237514, 0.707109332),})
createrainbow(Wing2Part,NumberSequence.new(1,0),NumberSequence.new(0),NumberRange.new(1.5),"Back",NumberRange.new(10),Vector3.new(0,10,0),0,true,"Firea")
Weld = New("ManualWeld",Wing2Part,"Weld",{Part0 = Wing2Part,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.866025448, 0.353553772, 0.353553891, -0.500001192, 0.612374902, 0.61237514, 3.06954462e-12, -0.707109571, 0.707109332),C1 = CFrame.new(3.00180054, 5.17823172, 4.67823792, 1, 0, 0, 0, 1, 0, 0, 0, 1),})

Halo = New("Model",chara,"Halo",{})
AHaloPart = New("Part",Halo,"AHaloPart",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-18.7999973, 5.50001764, -16.4999981, 1.00000644, 0, 1.25170106e-06, 0, 1, 0, 1.22189874e-06, 0, 1.00000715),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
HaWeld = New("ManualWeld",AHaloPart,"HaWeld",{Part0 = AHaloPart,Part1 = Head,C0 = CFrame.new(0, 0, 0, 1.00000644, 0, 1.22189874e-06, 0, 1, 0, 1.25170106e-06, 0, 1.00000715),C1 = CFrame.new(-1.90734863e-06, 1.00000906, 1.33514404e-05, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
HaPart = New("Part",Halo,"HaPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-18.1071625, 5.50001764, -16.0999889, 0.500003397, 0, 0.866038799, 0, 1, 0, -0.866037428, 0, 0.500008583),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",HaPart,"Weld",{Part0 = HaPart,Part1 = AHaloPart,C0 = CFrame.new(0, 0, 0, 0.499999106, 0, -0.866026282, 0, 1, 0, 0.866026342, 0, 0.499999285),C1 = CFrame.new(0.692829132, 0, 0.400005341, 1.00000644, 0, 1.22189874e-06, 0, 1, 0, 1.25170106e-06, 0, 1.00000715),})
HaPart = New("Part",Halo,"HaPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-18.285759, 5.50001764, -15.8871527, 0.76605016, 0, 0.642795265, 0, 1, 0, -0.642793238, 0, 0.766053021),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",HaPart,"Weld",{Part0 = HaPart,Part1 = AHaloPart,C0 = CFrame.new(0, 0, 0, 0.766044378, 0, -0.642788231, 0, 1, 0, 0.642788351, 0, 0.766044497),C1 = CFrame.new(0.514234543, 0, 0.612840652, 1.00000238, 0, 3.57627869e-07, 0, 1, 0, 3.57627869e-07, 0, 1.00000262),})
HaPart = New("Part",Halo,"HaPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-19.0736217, 5.50001764, -17.2517643, 0.939700842, 0, 0.342024595, 0, 1, 0, -0.342021763, 0, 0.939702868),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",HaPart,"Weld",{Part0 = HaPart,Part1 = AHaloPart,C0 = CFrame.new(0, 0, 0, 0.939693093, 0, -0.342019916, 0, 1, 0, 0.342020094, 0, 0.939693153),C1 = CFrame.new(-0.273622513, 0, -0.751760483, 1.00000238, 0, 3.57627869e-07, 0, 1, 0, 3.57627869e-07, 0, 1.00000262),})
HaPart = New("Part",Halo,"HaPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-19.4928379, 5.50001764, -16.9000072, 0.500003397, 0, 0.866038799, 0, 1, 0, -0.866037428, 0, 0.500008583),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",HaPart,"Weld",{Part0 = HaPart,Part1 = AHaloPart,C0 = CFrame.new(0, 0, 0, 0.499999106, 0, -0.866026282, 0, 1, 0, 0.866026342, 0, 0.499999285),C1 = CFrame.new(-0.692834854, 0, -0.400005341, 1.00000644, 0, 1.22189874e-06, 0, 1, 0, 1.25170106e-06, 0, 1.00000715),})
HaPart = New("Part",Halo,"HaPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-19.4928265, 5.50001764, -16.0999737, -0.500008047, 0, 0.866034508, 0, 1, 0, -0.866037786, 0, -0.500004828),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",HaPart,"Weld",{Part0 = HaPart,Part1 = AHaloPart,C0 = CFrame.new(0, 0, 0, -0.500000477, 0, -0.866025746, 0, 1, 0, 0.866025627, 0, -0.500000358),C1 = CFrame.new(-0.692825317, 0, 0.400022507, 1.00000501, 0, 8.64267349e-07, 0, 1, 0, 8.94069672e-07, 0, 1.00000548),})
HaPart = New("Part",Halo,"HaPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-19.5878544, 5.50001764, -16.6389122, 0.173646897, 0, 0.984815121, 0, 1, 0, -0.984815359, 0, 0.173649639),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",HaPart,"Weld",{Part0 = HaPart,Part1 = AHaloPart,C0 = CFrame.new(0, 0, 0, 0.173647016, 0, -0.984808564, 0, 1, 0, 0.984808564, 0, 0.173647195),C1 = CFrame.new(-0.787851334, 0, -0.138912201, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
HaPart = New("Part",Halo,"HaPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-18.5263824, 5.50001764, -17.2517605, -0.939701259, 0, 0.342020363, 0, 1, 0, -0.342023492, 0, -0.93970114),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",HaPart,"Weld",{Part0 = HaPart,Part1 = AHaloPart,C0 = CFrame.new(0, 0, 0, -0.93969363, 0, -0.34201926, 0, 1, 0, 0.342019081, 0, -0.93969363),C1 = CFrame.new(0.273614883, 0, -0.751756668, 1.00000119, 0, 1.78813934e-07, 0, 1, 0, 1.78813934e-07, 0, 1.00000131),})
HaPart = New("Part",Halo,"HaPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-18.0121346, 5.50001764, -16.6389122, -0.173651725, 0, 0.984817922, 0, 1, 0, -0.984819889, 0, -0.173648074),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",HaPart,"Weld",{Part0 = HaPart,Part1 = AHaloPart,C0 = CFrame.new(0, 0, 0, -0.173648179, 0, -0.984808624, 0, 1, 0, 0.984808445, 0, -0.17364794),C1 = CFrame.new(0.787857056, 0, -0.138914108, 1.00000358, 0, 5.81145287e-07, 0, 1, 0, 5.96046448e-07, 0, 1.00000393),})
HaPart = New("Part",Halo,"HaPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-18.0121384, 5.50001764, -16.3610725, 0.173646957, 0, 0.984817505, 0, 1, 0, -0.984817922, 0, 0.173650518),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",HaPart,"Weld",{Part0 = HaPart,Part1 = AHaloPart,C0 = CFrame.new(0, 0, 0, 0.173647016, 0, -0.984808624, 0, 1, 0, 0.984808564, 0, 0.173647255),C1 = CFrame.new(0.787853241, 0, 0.138923645, 1.00000238, 0, 3.57627869e-07, 0, 1, 0, 3.57627869e-07, 0, 1.00000262),})
HaPart = New("Part",Halo,"HaPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-18.2857647, 5.50001764, -17.1128464, -0.766056955, 0, 0.642793596, 0, 1, 0, -0.642798543, 0, -0.766054869),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",HaPart,"Weld",{Part0 = HaPart,Part1 = AHaloPart,C0 = CFrame.new(0, 0, 0, -0.766045511, 0, -0.642787457, 0, 1, 0, 0.642787278, 0, -0.766045451),C1 = CFrame.new(0.514230728, 0, -0.612844467, 1.00000644, 0, 1.22189874e-06, 0, 1, 0, 1.25170106e-06, 0, 1.00000715),})
HaPart = New("Part",Halo,"HaPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-18.1071663, 5.50001764, -16.9000053, -0.500009298, 0, 0.866035819, 0, 1, 0, -0.866039753, 0, -0.500005484),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",HaPart,"Weld",{Part0 = HaPart,Part1 = AHaloPart,C0 = CFrame.new(0, 0, 0, -0.500000715, 0, -0.866026103, 0, 1, 0, 0.866025865, 0, -0.500000477),C1 = CFrame.new(0.692827225, 0, -0.400005341, 1.00000644, 0, 1.22189874e-06, 0, 1, 0, 1.25170106e-06, 0, 1.00000715),})
HaPart = New("Part",Halo,"HaPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-19.3142319, 5.50001764, -15.8871336, -0.766055584, 0, 0.642793, 0, 1, 0, -0.642797172, 0, -0.766053736),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",HaPart,"Weld",{Part0 = HaPart,Part1 = AHaloPart,C0 = CFrame.new(0, 0, 0, -0.766045511, 0, -0.642787457, 0, 1, 0, 0.642787278, 0, -0.766045451),C1 = CFrame.new(-0.514232635, 0, 0.61286068, 1.00000501, 0, 8.64267349e-07, 0, 1, 0, 8.94069672e-07, 0, 1.00000548),})
HaPart = New("Part",Halo,"HaPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-19.0736103, 5.50001764, -15.7482185, -0.939703703, 0, 0.34202081, 0, 1, 0, -0.342024893, 0, -0.939703524),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",HaPart,"Weld",{Part0 = HaPart,Part1 = AHaloPart,C0 = CFrame.new(0, 0, 0, -0.939693749, 0, -0.342019379, 0, 1, 0, 0.342019081, 0, -0.939693689),C1 = CFrame.new(-0.273612976, 0, 0.751774788, 1.00000358, 0, 5.81145287e-07, 0, 1, 0, 5.96046448e-07, 0, 1.00000393),})
HaPart = New("Part",Halo,"HaPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-19.587862, 5.50001764, -16.3610744, -0.173652977, 0, 0.984820604, 0, 1, 0, -0.984823227, 0, -0.17364794),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",HaPart,"Weld",{Part0 = HaPart,Part1 = AHaloPart,C0 = CFrame.new(0, 0, 0, -0.173648298, 0, -0.984808683, 0, 1, 0, 0.984808445, 0, -0.17364791),C1 = CFrame.new(-0.787858963, 0, 0.138923645, 1.00000644, 0, 1.22189874e-06, 0, 1, 0, 1.25170106e-06, 0, 1.00000715),})
HaPart = New("Part",Halo,"HaPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-18.7999992, 5.50001764, -17.3000011, 1.00001216, 0, 2.29479861e-06, 0, 1, 0, 2.29479883e-06, 0, 1.00001347),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",HaPart,"Weld",{Part0 = HaPart,Part1 = AHaloPart,C0 = CFrame.new(0, 0, 0, 1.00000072, 0, 1.78813934e-07, 0, 1, 0, 1.78813934e-07, 0, 1.00000083),C1 = CFrame.new(0, 0, -0.79999733, 1.00000501, 0, 8.64267349e-07, 0, 1, 0, 8.94069672e-07, 0, 1.00000548),})
Horns = New("Part",Halo,"Horns",{FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.100000001, 0.100000001, 0.100000001),CFrame = CFrame.new(-18.7999992, 5.72899342, -16.4698296, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("SpecialMesh",Horns,"Mesh",{Scale = Vector3.new(1.08000004, 1, 1),VertexColor = Vector3.new(-1, -1, -1),MeshId = "http://www.roblox.com/asset/?id=71494804",TextureId = "http://www.roblox.com/asset/?id=71494779",MeshType = Enum.MeshType.FileMesh,})
Weld = New("ManualWeld",Horns,"Weld",{Part0 = Horns,Part1 = Head,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0, 1.22898483, -0.0301551819, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
for i,v in pairs(Halo:children()) do
if v:IsA("BasePart") then
v.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
end
end
coroutine.wrap(function()
while true do
swait()
HaWeld.C0 = HaWeld.C0 * CFrame.Angles(0,math.rad(1),0)
end
end)()



function CreateTrailObj(parent,color1,color2,ofsx,ofsz)
local Att1 =  New("Attachment",parent,"Att1",{Position = Vector3.new(ofsx,parent.Size.Y/2,ofsz)})
local Att2 =  New("Attachment",parent,"Att2",{Position = Vector3.new(ofsx,-(parent.Size.Y/2),ofsz)})
local TEff = New("Trail",parent,"TrailEff",{Color = ColorSequence.new({ColorSequenceKeypoint.new(0,BrickColor.new(color1).Color),ColorSequenceKeypoint.new(1,BrickColor.new(color2).Color)}),Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,.5),NumberSequenceKeypoint.new(1,1)}),Attachment0 = Att1,Attachment1 = Att2,Enabled = false,Lifetime = .5,MinLength = .001,LightEmission = 1})
return TEff
end

LLTr = CreateTrailObj(LeftLeg,"White","White",0,0)
RLTr = CreateTrailObj(RightLeg,"White","White",0,0)
LATr = CreateTrailObj(LeftArm,"White","White",0,0)
RATR = CreateTrailObj(RightArm,"White","White",0,0)

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

function killmortal(dude,faws)
local hah = dude:FindFirstChildOfClass("Humanoid")
if hah and dude:FindFirstChild("Debawns")==nil and dude.Name ~= "Salvo_Starly" and dude.Name ~= "NoobyGames12" and dude.Name ~= "CKbackup" and dude.Name ~= "Nebula_Zorua" then
local torsy = dude:FindFirstChild("UpperTorso") or dude:FindFirstChild("Torso")
if torsy then
local val = Instance.new("BoolValue",dude)
val.Name = "Debawns"
game:service'Debris':AddItem(val,2)
torsy.Velocity = RootPart.CFrame.lookVector*faws
coroutine.wrap(function()
for nn=1,math.random(4,6) do
local bl = Instance.new("Part",dude)
bl.CFrame = torsy.CFrame + Vector3.new(math.random(-1,1),0,math.random(-1,1))
local randd = math.random(6,20)/10
bl.Size = Vector3.new(randd,.2,randd)
bl.BrickColor = BrickColor.new("Maroon")
bl.Material = "Granite"
local clm = Instance.new("CylinderMesh",bl)
coroutine.wrap(function()
swait(120)
for i=0,1,.01 do
clm.Scale = Vector3.new(1-i,1-i,1-i)
swait()
end
bl:Destroy()
end)()
end
end)()
end
hah:TakeDamage(math.random(30,35))
end
end

function mdmg(Part, Magnitude, HitType)
	for _, c in pairs(workspace:GetDescendants()) do
		local hum = c:FindFirstChildOfClass("Humanoid")
		if hum ~= nil then
			local head = c:FindFirstChild("UpperTorso") or c:FindFirstChild("Torso")
			if head ~= nil then
				local targ = head.Position - Part.Position
				local mag = targ.magnitude
				if mag <= Magnitude and c.Name ~= Player.Name and c:FindFirstChild("MagDmgd")==nil then 
				if c.Name ~= chara then
				if c.Name ~= "CKbackup" or c.Name ~= "Nebula_Zorua" or c.Name ~= "Salvo_Starly" then
			local val = Instance.new("BoolValue",c)
			val.Name = "MagDmgd"
					--Damage(head, head, MinimumDamage, MaximumDamage, KnockBack, Type, RootPart, .1, "rbxassetid://" .. HitSound, HitPitch)
				if HitType == "Blunt" then				
				so(386946017,head,.95,3)
				elseif HitType == "Scream" then
				coroutine.wrap(function()
				local haed = c:FindFirstChild("Head")
				swait(3)
				so(206082327,haed,1,5)
				local passa = haed.Position
				haed:Destroy()
				createSplatter(passa)
				for i=1,15 do
				local bl = Instance.new("Part",head)
				bl.CFrame = CFrame.new(passa) + Vector3.new(math.random(-10,10)/10,0,math.random(-10,10)/10)
				local rand = math.random(2,7)/10
				bl.Size = Vector3.new(rand,rand,rand)
				bl.BrickColor = BrickColor.new("Maroon")
				bl.Material = "Granite"
				end
				end)()
				elseif HitType == "Arm" then
				grabhand = false	
				so(386946017,head,.95,3)
				armo:BreakJoints()
				local ar = armo
				coroutine.wrap(function()
				ar.Velocity = RootPart.CFrame.lookVector*-5 + RootPart.CFrame.rightVector*-5 + Vector3.new(0,60,0)
				swait(2)
				ar.CanCollide = true
				swait(60)
				for i=0,1,.05 do
				swait()
				ar.Transparency = i
				end
				ar.Parent:Destroy()
				end)()
				armo = nil
				elseif HitType == "Shot" then
				so(144884872,head,.9,3)
				game:service'Debris':AddItem(val,.05)	
				end
				killmortal(c,10)
				    else
					end
				end
			end
		end
	end
	end
end

--[[FindNearestTorso = function(pos)
	local list = (game.workspace:GetDescendants())
	local torso = nil
	local dist = 1000
	local temp, human, temp2 = nil, nil, nil
	for x = 1, #list do
		temp2 = list[x]
		if temp2.className == "Model" and temp2.Name ~= chara.Name then
			temp = temp2:findFirstChild("Torso")
			human = temp2:FindFirstChildOfClass("Humanoid")
			if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
				local dohit = true
				if dohit == true then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso, dist
end]]


function FindNearestTorso(Position, Distance, SinglePlayer)
	if SinglePlayer then
		return (SinglePlayer.Head.CFrame.p - Position).magnitude < Distance
	end
	local List = {}
	for i, v in pairs(workspace:GetDescendants()) do
		if v:IsA("Model") then
			if v:findFirstChild("Head") then
				if v ~= chara then
					if (v.Head.Position - Position).magnitude <= Distance then
						table.insert(List, v)
					end 
				end 
			end 
		end 
	end
	return List
end


--Chat Function--
function chatfunc(text)
coroutine.wrap(function()
if chara:FindFirstChild("TalkingBillBoard")~= nil then
chara:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",chara)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = chara.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(.6,0,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
local shk = coroutine.wrap(function()
while tecks2 ~= nil do
swait(.05)
tecks2.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3))
end
end)
shk()
for i = 1,string.len(text),1 do
tecks2.Text = string.sub(text,1,i)
swait(0.01)
end
swait(30)
for i = 1, 5 do
swait()
tecks2.Position = tecks2.Position - UDim2.new(0,0,.05,0)
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.2
tecks2.TextTransparency = tecks2.TextTransparency + .2
end
naeeym2:Destroy()
end)()
end




EffectModel = Create("Model"){
	Parent = chara,
	Name = "Effects",
}


Effects = {
	Block = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			if Type == 1 or Type == nil then
				table.insert(Effects, {
					prt,
					"Block1",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			elseif Type == 2 then
				table.insert(Effects, {
					prt,
					"Block2",
					delay,
					x3,
					y3,
					z3,
					msh
				})
			end
		end;
	};

		Cylinder = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())		
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end;
	};
	Head = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Head", "nil", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end;
	};
	
	Sphere = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end;
	};
	
	Elect = {
		Create = function(cff, x, y, z)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, BrickColor.new("Lime green"), "Part", Vector3.new(1, 1, 1))
			prt.Anchored = true
			prt.CFrame = cff * CFrame.new(math.random(-x, x), math.random(-y, y), math.random(-z, z))
			prt.CFrame = CFrame.new(prt.Position)
			game:GetService("Debris"):AddItem(prt, 2)
			local xval = math.random() / 2
			local yval = math.random() / 2
			local zval = math.random() / 2
			local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(xval, yval, zval))
			table.insert(Effects, {
				prt,
				"Elec",
				0.1,
				x,
				y,
				z,
				xval,
				yval,
				zval
			})
		end;

	};
	
	Ring = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end;
	};


	Wave = {
		Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Cylinder",
				delay,
				x3,
				y3,
				z3,
				msh
			})
		end;
	};

	Break = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
			prt.Anchored = true
			prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
			local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			local num = math.random(10, 50) / 1000
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Shatter",
				num,
				prt.CFrame,
				math.random() - math.random(),
				0,
				math.random(50, 100) / 100
			})
		end;
	};
	
	Fire = {
		Create = function(brickcolor, cframe, x1, y1, z1, delay)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"Fire",
				delay,
				1,
				1,
				1,
				msh
			})
		end;
	};
	
	FireWave = {
		Create = function(brickcolor, cframe, x1, y1, z1)
			local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 1, brickcolor, "Effect", Vector3.new())
			prt.Anchored = true
			prt.CFrame = cframe
			msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
			local d = Create("Decal"){
				Parent = prt,
				Texture = "rbxassetid://26356434",
				Face = "Top",
			}
			local d = Create("Decal"){
				Parent = prt,
				Texture = "rbxassetid://26356434",
				Face = "Bottom",
			}
			game:GetService("Debris"):AddItem(prt, 10)
			table.insert(Effects, {
				prt,
				"FireWave",
				1,
				30,
				math.random(400, 600) / 100,
				msh
			})
		end;
	};
	
	Lightning = {
		Create = function(p0, p1, tym, ofs, col, th, tra, last)
			local magz = (p0 - p1).magnitude
			local curpos = p0
			local trz = {
				-ofs,
				ofs
			}
			for i = 1, tym do
				local li = CFuncs.Part.Create(EffectModel, "Neon", 0, tra or 0.4, col, "Ref", Vector3.new(th, th, magz / tym))
				local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
				local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
				li.Material = "Neon"
				if tym == i then
					local magz2 = (curpos - p1).magnitude
					li.Size = Vector3.new(th, th, magz2)
					li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
					table.insert(Effects, {
						li,
						"Disappear",
						last
					})
				else
					do
						do
							li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
							curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
							game.Debris:AddItem(li, 10)
							table.insert(Effects, {
								li,
								"Disappear",
								last
							})
						end
					end
				end
			end
		end
	};

	EffectTemplate = {

	};
}


local blpemit = Instance.new("ParticleEmitter")
blpemit.Color = ColorSequence.new(Color3.new(.5,0,0))
blpemit.Texture = "rbxassetid://233069772"
blpemit.Transparency = NumberSequence.new(0,1)
blpemit.Lifetime = NumberRange.new(1,3)
blpemit.Acceleration = Vector3.new(0,-10,0)
blpemit.Enabled = true
blpemit.EmissionDirection = "Front"
blpemit.Speed = NumberRange.new(1,3)
blpemit.Size = NumberSequence.new(.5)
blpemit.Rate = 1000
blpemit.RotSpeed = NumberRange.new(50)
blpemit.Rotation = NumberRange.new(0,360)

function createSplatter(pos)
local emit = Instance.new("Part",chara)
emit.Anchored = true
emit.CanCollide = false
emit.Size = Vector3.new()
emit.Transparency = 1
emit.CFrame = CFrame.new(pos)
local blp = blpemit:Clone()
blp.Parent = emit
blp.Enabled = false
blp.EmissionDirection = "Top"
blp.VelocitySpread = 60
blp.Size = NumberSequence.new(2,0)
blp.Lifetime = NumberRange.new(3)
blp.Speed = NumberRange.new(10)
blp.Acceleration = Vector3.new(0,-10,0)
blp:Emit(math.random(35,40))
game:service'Debris':AddItem(emit,4)
end

function thenatsuki()
attack = true
Humanoid.WalkSpeed = 2
local grab = nil
local torsy = nil
for i, v in pairs(FindNearestTorso(Torso.Position, 5)) do
if v:FindFirstChild('Head') and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 1 and v.Name ~= "Salvo_Starly" and v.Name ~= "NoobyGames12" and v.Name ~= "CKbackup" and v.Name ~= "Nebula_Zorua" then
torsy = v:FindFirstChild("UpperTorso") or v:FindFirstChild("Torso")
grab = v
end
end
if grab ~= nil and torsy ~= nil then
Instance.new("BoolValue",grab).Name = "NATSUKID"
so(200632136, RootPart, .8, 1)
for i = 0,2,0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0.00182705373, -0.0581560358, 1, 0, 0, 0, 0.996194661, 0.087155968, 0, -0.087155968, 0.996194661),
CFrame.new(0, 1.49941719, 0.0767186508, 1, 0, 0, 0, 0.996194661, -0.087155968, 0, 0.087155968, 0.996194661),
CFrame.new(1.1733681, 1.00347483, -0.438556999, 0.834721148, 0.546610475, 0.0667646676, 0.395648003, -0.510977745, -0.763128042, -0.383018494, 0.663414538, -0.642789304),
CFrame.new(-1.19234979, 1.02193367, -0.467352033, 0.879184604, -0.471780479, -0.0667649657, -0.349608243, -0.543515444, -0.763128519, 0.323741287, 0.694272459, -0.642788768),
CFrame.new(0.499997675, -1.9992758, -0.116536342, 0.965925872, 0, -0.258818984, -0.02255762, 0.996194661, -0.0841862038, 0.257834077, 0.087155968, 0.962250173),
CFrame.new(-0.50000006, -1.99927592, -0.116537228, 0.984807849, 0, 0.173647985, 0.0151344584, 0.996194661, -0.0858318806, -0.172987193, 0.087155968, 0.981060326),
}, .3, false)
torsy.CFrame = RootPart.CFrame*CFrame.new(0,0,-1.3)
torsy.Velocity = Vector3.new()
end
local wel = Instance.new("Weld",grab.Head)
wel.Part0 = torsy
wel.Part1 = grab.Head
wel.C0 = CFrame.new(0,1.5,0)
local bledp = Instance.new("Part",grab)
bledp.Size = Vector3.new(0,0,0)
bledp.Transparency = 1
bledp.CanCollide = false
local blpe = blpemit:Clone()
blpe.Parent = bledp
blpe.EmissionDirection = "Top"
blpe.VelocitySpread = 5
wel.C0 = CFrame.new(0,-1.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0)
local bledw = Instance.new("Weld",bledp)
bledw.Part0 = grab.Head
bledw.Part1 = bledp
bledw.C0 = CFrame.new(0,-.7,0) * CFrame.Angles(0,0,math.rad(45))
so(314390675,torsy,.7,5)
for i = 0, 1, 0.25 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.37728107, 0.00182711286, -0.228351086, 0.707106352, 0.0616285279, -0.704416513, 0, 0.99619478, 0.0871558264, 0.707107365, -0.0616284423, 0.7044155),
CFrame.new(-9.90927219e-07, 1.49941754, 0.0767165273, 0.766044199, 0, 0.642788053, 0.0560227223, 0.99619478, -0.066765219, -0.640341938, 0.0871558264, 0.763129056),
CFrame.new(1.14925241, 0.936202288, -0.560600817, 0.834721982, 0.490812272, 0.249685481, 0.39564395, -0.219157442, -0.891872227, -0.383021295, 0.843251646, -0.377122372),
CFrame.new(-1.01654804, 1.22616923, -0.180458635, 0.525007069, -0.121539712, -0.8423751, -0.63483566, -0.715151966, -0.292475075, -0.566878796, 0.688320994, -0.452617407),
CFrame.new(0.499999106, -1.99927592, -0.116537355, 0.965925813, 0, -0.258819491, -0.0225576311, 0.99619478, -0.0841860622, 0.257834613, 0.0871558264, 0.962249994),
CFrame.new(-0.500003219, -1.99927604, -0.116538122, 0.984807849, 0, 0.173648447, 0.0151344724, 0.99619478, -0.0858317465, -0.17298761, 0.0871558264, 0.981060266),
}, .3, false)
wel.C0 = CFrame.new(.7*i,1.5,0) * CFrame.Angles(0,0,math.rad(-90*i))
torsy.CFrame = RootPart.CFrame*CFrame.new(0,0,-2)
torsy.Velocity = Vector3.new()
end
for i=1,30 do
swait()
torsy.CFrame = RootPart.CFrame*CFrame.new(0,0,-2)
torsy.Velocity = Vector3.new()
end
killmortal(grab,20)
end
attack = false
Humanoid.WalkSpeed = 8
end

xhold = false
function thesurou()
attack = true
Humanoid.WalkSpeed = 2
local grab = nil
local torsy = nil
local hum = nil
for i, v in pairs(FindNearestTorso(Torso.Position, 5)) do
if v:FindFirstChild('Head') and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 1 and v.Name ~= "Salvo_Starly" and v.Name ~= "NoobyGames12" and v.Name ~= "CKbackup" and v.Name ~= "Nebula_Zorua" then
hum = v:FindFirstChildOfClass("Humanoid")
torsy = v:FindFirstChild("UpperTorso") or v:FindFirstChild("Torso")
grab = v
end
end
if grab ~= nil and torsy ~= nil then
so(200632136, RootPart, .8, 1)
for i = 0,1.5,0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, 0.866025388),
CFrame.new(0, 1.49999118, 0, 0.866025388, 0, 0.500000238, 0, 1, 0, -0.500000238, 0, 0.866025388),
CFrame.new(1.50000226, 0.492404312, 0.086825721, 0.642795563, -0.766037941, -8.04662704e-07, -0.133022025, -0.111620016, -0.98480767, 0.754399955, 0.633030057, -0.17364876),
CFrame.new(-1.49999845, 0, 0, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
CFrame.new(0.500000119, -2, 0, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
CFrame.new(-0.499997556, -2, 1.63912773e-07, 0.766044557, 0, 0.642787695, 0, 1, 0, -0.642787695, 0, 0.766044557),
}, .3, false)
torsy.CFrame = RootPart.CFrame*CFrame.new(0,0,-1.3)
torsy.Velocity = Vector3.new()
end
so(240429615, torsy, 1, 1)
for i = 0, 1.5, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 0.866025388, 0, 0.500000238, 0, 1, 0, -0.500000238, 0, 0.866025388),
CFrame.new(0.0219391882, 1.50780332, -0.243838966, 0.852868617, 0.0296956748, -0.521280766, 0.173647985, 0.925416708, 0.336823881, 0.492404163, -0.377785802, 0.784102201),
CFrame.new(1.50000226, 0.469847411, -0.171007544, 0.939692974, -0.342019379, -5.81145287e-07, 0.116976947, 0.321393847, -0.939692736, 0.321393311, 0.883022606, 0.342019975),
CFrame.new(-1.50000036, 0, -3.81469818e-06, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
CFrame.new(0.500001073, -1.99999905, 7.15255737e-07, 0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, 0.866025388),
CFrame.new(-0.500000119, -1.99999905, -3.81469818e-06, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
}, .3, false)
torsy.CFrame = RootPart.CFrame*CFrame.new(0,0,-1.3)
torsy.Velocity = Vector3.new()
end
repeat
--for i = 0, 2, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.00874902681, -4.76837158e-07, -0.101877891, 0.342019022, 0, -0.939693093, 0, 1, 0, 0.939693093, 0, 0.342018992),
CFrame.new(0.0987267792, 1.49999189, 0.0266250018, 0.342019022, 0, 0.939693093, 0, 1, 0, -0.939693093, 0, 0.342018992),
CFrame.new(1.49999821, 0.499999046, -0.399993986, 1.00000012, -2.98023224e-08, 0, 0, 0, -1, -2.98023224e-08, 1.00000012, 0),
CFrame.new(-1.54019761, 0.669612885, -6.12696294e-06, 0.499998331, 0.866026461, 1.87754631e-06, -0.866026402, 0.499998331, 2.13891599e-06, 8.94069672e-07, -2.71201134e-06, 1.00000012),
CFrame.new(0.500005782, -1.99999893, -3.82959888e-06, 1.00000012, 0, -2.98023224e-08, 0, 1, 0, -2.98023224e-08, 0, 1.00000012),
CFrame.new(-0.499995083, -1.99999893, -1.18389726e-05, 0.17364721, 0, 0.984808028, 0, 1, 0, -0.984808028, 0, 0.17364718),
}, .3, false)
torsy.CFrame = RightArm.CFrame*CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(-90),0,0)
hum.PlatformStand = true
torsy.Velocity = Vector3.new()
--end
until xhold == false
so(200632136, RootPart, .9, 1)
local pato = Instance.new("Part",torsy)
pato.CFrame = torsy.CFrame
pato.Size = Vector3.new(4.1,6.1,1.1)
pato.Transparency = 1
pato.CanCollide = false
pato.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
local werudo = Instance.new("Weld",pato)
werudo.Part0 = pato
werudo.Part1 = torsy
torsy.Velocity = (Mouse.Hit.p-torsy.Position).unit*100+Vector3.new(0,30,0)
torsy.RotVelocity = Vector3.new(10,10,10)
coroutine.wrap(function()
while true do
swait()
hum.PlatformStand = true
end
end)
pato.Touched:connect(function(hit)
if hit:IsDescendantOf(chara)==false then
pato:Destroy()
killmortal(grab,5)
so(260430079,torsy,1,5)
createSplatter(torsy.Position)
mdmg(torsy,3,"Blunt")
Effects.Wave.Create(BrickColor.new("White"), CFrame.new(torsy.Position), 0, 0, 0, 1, .2, 1, 0.1)
end	
end)
end
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.0371780396, -4.76837158e-07, -0.0659790039, 0, 0, 1, 0, 1, 0, -1, 0, 0),
CFrame.new(0.0118849091, 1.43262982, -0.187934548, 0.716230929, -0.163175121, -0.678518414, 0.349525958, 0.92541784, 0.146401539, 0.604023933, -0.342017084, 0.719846845),
CFrame.new(1.05005264, 0.0782932937, -0.664391041, 0.766043901, 0.642788291, -5.71537271e-07, -0.321393967, 0.383021057, -0.866025865, -0.556670964, 0.663414121, 0.499999195),
CFrame.new(-1.59158015, 0.575855374, -7.62939453e-06, 0.64278698, 0.766044974, 0, -0.766044974, 0.64278698, 0, 0, 0, 1),
CFrame.new(0.500011563, -1.99999893, -2.07126141e-06, 0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, 0.866025388),
CFrame.new(-0.946406364, -1.97320735, -7.62939453e-06, 0.866025388, 0.500000238, 0, -0.500000238, 0.866025388, 0, 0, 0, 1),
}, .3, false)
end
attack = false
Humanoid.WalkSpeed = 8
end

function thehead()
attack = true
Humanoid.WalkSpeed = 2
local grab = nil
local torsy = nil
for i, v in pairs(FindNearestTorso(Torso.Position, 5)) do
if v:FindFirstChild('Head') and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 1 and v.Name ~= "Salvo_Starly" and v.Name ~= "NoobyGames12" and v.Name ~= "CKbackup" and v.Name ~= "Nebula_Zorua" then
torsy = v:FindFirstChild("UpperTorso") or v:FindFirstChild("Torso")
grab = v
end
end
if grab ~= nil and torsy ~= nil then
so(200632136, RootPart, .8, 1)
for i = 0,2,0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0.00182705373, -0.0581560358, 1, 0, 0, 0, 0.996194661, 0.087155968, 0, -0.087155968, 0.996194661),
CFrame.new(0, 1.49941719, 0.0767186508, 1, 0, 0, 0, 0.996194661, -0.087155968, 0, 0.087155968, 0.996194661),
CFrame.new(1.1733681, 1.00347483, -0.438556999, 0.834721148, 0.546610475, 0.0667646676, 0.395648003, -0.510977745, -0.763128042, -0.383018494, 0.663414538, -0.642789304),
CFrame.new(-1.19234979, 1.02193367, -0.467352033, 0.879184604, -0.471780479, -0.0667649657, -0.349608243, -0.543515444, -0.763128519, 0.323741287, 0.694272459, -0.642788768),
CFrame.new(0.499997675, -1.9992758, -0.116536342, 0.965925872, 0, -0.258818984, -0.02255762, 0.996194661, -0.0841862038, 0.257834077, 0.087155968, 0.962250173),
CFrame.new(-0.50000006, -1.99927592, -0.116537228, 0.984807849, 0, 0.173647985, 0.0151344584, 0.996194661, -0.0858318806, -0.172987193, 0.087155968, 0.981060326),
}, .3, false)
torsy.CFrame = RootPart.CFrame*CFrame.new(0,0,-1.3)
torsy.Velocity = Vector3.new()
end
local armmod = Instance.new("Model",chara)
armmod.Name = grab.Name
Instance.new("Humanoid",armmod).Health = 0
for i, v in pairs(grab:GetChildren()) do
if v:IsA("Accoutrement") then
if v:FindFirstChild("Handle"):FindFirstChild("AccessoryWeld") then
v.Handle.AccessoryWeld.Part1 = nil
end
end
end
local armp = grab:FindFirstChild("Head")
createSplatter(armp.Position)
killmortal(grab,5)
armp.Parent = armmod
for i, v in pairs(grab:GetChildren()) do
if v:IsA("Accoutrement") then
if v:FindFirstChild("Handle"):FindFirstChild("AccessoryWeld") then
v.Handle.AccessoryWeld.Part1 = armp
v.Parent = armmod
end
end
end
so(206082327,armp,1,5)
local bledp = Instance.new("Part",grab)
bledp.Size = Vector3.new(0,0,0)
bledp.Transparency = 1
bledp.CanCollide = false
local blpe = blpemit:Clone()
blpe.Parent = bledp
blpe.EmissionDirection = "Top"
blpe.VelocitySpread = 20
local wel = Instance.new("Weld",armp)
wel.Part0 = RightArm
wel.Part1 = armp
wel.C0 = CFrame.new(0,-1.5,0) * CFrame.Angles(math.rad(-90),0,0)
local blape = bledp:Clone()
blape.Parent = armmod
blape.ParticleEmitter.EmissionDirection = "Bottom"
local bledw = Instance.new("Weld",bledp)
bledw.Part0 = torsy
bledw.Part1 = bledp
bledw.C0 = CFrame.new(0,1,0)
local bledw2 = Instance.new("Weld",blape)
bledw2.Part0 = armp
bledw2.Part1 = blape
bledw2.C0 = CFrame.new(0,-.5,0)
grabhead = true
heddo = armp
for i = 0, 1, 0.25 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.37728107, 0.00182711286, -0.228351086, 0.707106352, 0.0616285279, -0.704416513, 0, 0.99619478, 0.0871558264, 0.707107365, -0.0616284423, 0.7044155),
CFrame.new(-9.90927219e-07, 1.49941754, 0.0767165273, 0.766044199, 0, 0.642788053, 0.0560227223, 0.99619478, -0.066765219, -0.640341938, 0.0871558264, 0.763129056),
CFrame.new(1.50000226, 0.492404312, 0.086825721, 0.642795563, -0.766037941, -8.04662704e-07, -0.133022025, -0.111620016, -0.98480767, 0.754399955, 0.633030057, -0.17364876),
CFrame.new(-1.01654804, 1.22616923, -0.180458635, 0.525007069, -0.121539712, -0.8423751, -0.63483566, -0.715151966, -0.292475075, -0.566878796, 0.688320994, -0.452617407),
CFrame.new(0.499999106, -1.99927592, -0.116537355, 0.965925813, 0, -0.258819491, -0.0225576311, 0.99619478, -0.0841860622, 0.257834613, 0.0871558264, 0.962249994),
CFrame.new(-0.500003219, -1.99927604, -0.116538122, 0.984807849, 0, 0.173648447, 0.0151344724, 0.99619478, -0.0858317465, -0.17298761, 0.0871558264, 0.981060266),
}, .3, false)
end
swait(30)
end
attack = false
Humanoid.WalkSpeed = 8
end

function headthrow()
attack = true
Humanoid.WalkSpeed = 2
for i = 0, 2, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.00874902681, -4.76837158e-07, -0.101877891, 0.342019022, 0, -0.939693093, 0, 1, 0, 0.939693093, 0, 0.342018992),
CFrame.new(0.0987267792, 1.49999189, 0.0266250018, 0.342019022, 0, 0.939693093, 0, 1, 0, -0.939693093, 0, 0.342018992),
CFrame.new(1.49999821, 0.499999046, -0.399993986, 1.00000012, -2.98023224e-08, 0, 0, 0, -1, -2.98023224e-08, 1.00000012, 0),
CFrame.new(-1.54019761, 0.669612885, -6.12696294e-06, 0.499998331, 0.866026461, 1.87754631e-06, -0.866026402, 0.499998331, 2.13891599e-06, 8.94069672e-07, -2.71201134e-06, 1.00000012),
CFrame.new(0.500005782, -1.99999893, -3.82959888e-06, 1.00000012, 0, -2.98023224e-08, 0, 1, 0, -2.98023224e-08, 0, 1.00000012),
CFrame.new(-0.499995083, -1.99999893, -1.18389726e-05, 0.17364721, 0, 0.984808028, 0, 1, 0, -0.984808028, 0, 0.17364718),
}, .3, false)
end
so(200632136, RootPart, .8, 1)
local haea = heddo
haea.Weld:Destroy()
haea.Velocity = (Mouse.Hit.p-haea.Position).unit*200+Vector3.new(0,30,0)
haea.RotVelocity = Vector3.new(10,10,10)
haea.Touched:connect(function(hit)
if hit:IsDescendantOf(chara)==false and hit.Parent:FindFirstChildOfClass("Humanoid") and haea:FindFirstChild("HITA")==nil then
print("BOOBIES")
Instance.new("BoolValue",haea).Name = "HITA"
Effects.Wave.Create(BrickColor.new("White"), CFrame.new(haea.Position), 0, 0, 0, 1, .2, 1, 0.1)
killmortal(hit.Parent,50)
so(386946017,haea,.95,5)
swait(120)
for i=0,1,.05 do
haea.Transparency = i
swait()
end
haea.Parent:Destroy()
end	
end)
heddo = nil
grabhead = false
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.0371780396, -4.76837158e-07, -0.0659790039, 0, 0, 1, 0, 1, 0, -1, 0, 0),
CFrame.new(0.0118849091, 1.43262982, -0.187934548, 0.716230929, -0.163175121, -0.678518414, 0.349525958, 0.92541784, 0.146401539, 0.604023933, -0.342017084, 0.719846845),
CFrame.new(1.05005264, 0.0782932937, -0.664391041, 0.766043901, 0.642788291, -5.71537271e-07, -0.321393967, 0.383021057, -0.866025865, -0.556670964, 0.663414121, 0.499999195),
CFrame.new(-1.59158015, 0.575855374, -7.62939453e-06, 0.64278698, 0.766044974, 0, -0.766044974, 0.64278698, 0, 0, 0, 1),
CFrame.new(0.500011563, -1.99999893, -2.07126141e-06, 0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, 0.866025388),
CFrame.new(-0.946406364, -1.97320735, -7.62939453e-06, 0.866025388, 0.500000238, 0, -0.500000238, 0.866025388, 0, 0, 0, 1),
}, .3, false)
end
attack = false
Humanoid.WalkSpeed = 8
end

function therip()
attack = true
Humanoid.WalkSpeed = 2
local grab = nil
local torsy = nil
local hum = nil
for i, v in pairs(FindNearestTorso(Torso.Position, 5)) do
if v:FindFirstChild('Head') and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 1 and v.Name ~= "Salvo_Starly" and v.Name ~= "NoobyGames12" and v.Name ~= "CKbackup" and v.Name ~= "Nebula_Zorua" then
hum = v:FindFirstChildOfClass("Humanoid")
torsy = v:FindFirstChild("UpperTorso") or v:FindFirstChild("Torso")
grab = v
end
end
if grab ~= nil and torsy ~= nil then
so(200632136, RootPart, .8, 1)
for i = 0,1.5,0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, 0.866025388),
CFrame.new(0, 1.49999118, 0, 0.866025388, 0, 0.500000238, 0, 1, 0, -0.500000238, 0, 0.866025388),
CFrame.new(1.50000226, 0.492404312, 0.086825721, 0.642795563, -0.766037941, -8.04662704e-07, -0.133022025, -0.111620016, -0.98480767, 0.754399955, 0.633030057, -0.17364876),
CFrame.new(-1.49999845, 0, 0, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
CFrame.new(0.500000119, -2, 0, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
CFrame.new(-0.499997556, -2, 1.63912773e-07, 0.766044557, 0, 0.642787695, 0, 1, 0, -0.642787695, 0, 0.766044557),
}, .3, false)
torsy.CFrame = RootPart.CFrame*CFrame.new(0,0,-1.3)
torsy.Velocity = Vector3.new()
end
so(240429615, torsy, 1, 1)
for i = 0, 1.5, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 0.866025388, 0, 0.500000238, 0, 1, 0, -0.500000238, 0, 0.866025388),
CFrame.new(0.0219391882, 1.50780332, -0.243838966, 0.852868617, 0.0296956748, -0.521280766, 0.173647985, 0.925416708, 0.336823881, 0.492404163, -0.377785802, 0.784102201),
CFrame.new(1.50000226, 0.469847411, -0.171007544, 0.939692974, -0.342019379, -5.81145287e-07, 0.116976947, 0.321393847, -0.939692736, 0.321393311, 0.883022606, 0.342019975),
CFrame.new(-1.50000036, 0, -3.81469818e-06, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
CFrame.new(0.500001073, -1.99999905, 7.15255737e-07, 0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, 0.866025388),
CFrame.new(-0.500000119, -1.99999905, -3.81469818e-06, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
}, .3, false)
torsy.CFrame = RootPart.CFrame*CFrame.new(0,0,-1.3)
torsy.Velocity = Vector3.new()
end
for i = 0, 3, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0, 1.4261663, 0.264408052, 1, 0, 0, 0, 0.76604414, -0.642788053, 0, 0.642788053, 0.76604414),
CFrame.new(1.45148087, 1.32618856, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),
CFrame.new(-1.48567963, 1.22015762, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),
CFrame.new(0.500001848, -1.99999988, 1.62422657e-06, 0.939692736, 0, -0.342019886, 0, 1, 0, 0.342019916, 0, 0.939692736),
CFrame.new(-0.500001848, -1.99999988, 1.62422657e-06, 0.939692736, 0, 0.342019886, 0, 1, 0, -0.342019916, 0, 0.939692736),
}, .3, false)
torsy.CFrame = clerp(torsy.CFrame,RootPart.CFrame*CFrame.new(0,3,0)*CFrame.Angles(math.rad(90),0,math.rad(90)),.3)
hum.PlatformStand = true
torsy.Velocity = Vector3.new()
end
so(206082327,torsy,1,5)
createSplatter(torsy.Position)
if hum.RigType == Enum.HumanoidRigType.R6 then
local lleg = grab:FindFirstChild("Left Leg")
local rleg = grab:FindFirstChild("Right Leg")
local mad = Instance.new("Model",workspace)
Instance.new("Humanoid",mad).Health = 0
mad.Humanoid.MaxHealth = 0
if grab:FindFirstChildOfClass("Pants") then grab:FindFirstChildOfClass("Pants"):Clone().Parent = mad end
killmortal(grab,0)
coroutine.wrap(function()
swait(4)
torsy.Velocity = RootPart.CFrame.rightVector*-30
lleg.Parent = mad
rleg.Parent = mad
lleg.CanCollide = true
rleg.CanCollide = true
lleg:BreakJoints()
rleg:BreakJoints()
lleg.Velocity = RootPart.CFrame.rightVector*30
rleg.Velocity = RootPart.CFrame.rightVector*30
local bledp = Instance.new("Part",mad)
bledp.Size = Vector3.new(0,0,0)
bledp.Transparency = 1
bledp.CanCollide = false
local blpe = blpemit:Clone()
blpe.Parent = bledp
blpe.EmissionDirection = "Top"
blpe.VelocitySpread = 20
local bledp2 = bledp:Clone()
bledp2.Parent = mad
local blape = bledp:Clone()
blape.Parent = mad
blape.ParticleEmitter.EmissionDirection = "Bottom"
blape.Size = Vector3.new(1.5,0,0)
local bledw = Instance.new("Weld",bledp)
bledw.Part0 = lleg
bledw.Part1 = bledp
bledw.C0 = CFrame.new(0,1,0)
local bledw2 = Instance.new("Weld",blape)
bledw2.Part0 = torsy
bledw2.Part1 = blape
bledw2.C0 = CFrame.new(0,-.5,0)
local bledw3 = Instance.new("Weld",bledp2)
bledw.Part0 = rleg
bledw.Part1 = bledp2
bledw.C0 = CFrame.new(0,1,0)
game:service'Debris':AddItem(mad,15)
end)()
elseif hum.RigType == Enum.HumanoidRigType.R15 then
local hip = grab:FindFirstChild("LowerTorso")
local lleg = grab:FindFirstChild("LeftUpperLeg")
local rleg = grab:FindFirstChild("RightUpperLeg")
--for i,v in pairs(grab:children()) do
--if v:IsA("BasePart") then blpemit:Clone().Parent = v end
--end
killmortal(grab,0)
coroutine.wrap(function()
swait(2)
hip:Destroy()
torsy.Velocity = RootPart.CFrame.rightVector*-60
lleg.Velocity = RootPart.CFrame.rightVector*60
rleg.Velocity = RootPart.CFrame.rightVector*60
local bledp = Instance.new("Part",torsy.Parent)
bledp.Size = Vector3.new(0,0,0)
bledp.Transparency = 1
bledp.CanCollide = false
local blpe = blpemit:Clone()
blpe.Parent = bledp
blpe.EmissionDirection = "Top"
blpe.VelocitySpread = 20
local bledp2 = bledp:Clone()
bledp2.Parent = torsy.Parent
local blape = bledp:Clone()
blape.Parent = torsy.Parent
blape.ParticleEmitter.EmissionDirection = "Bottom"
blape.Size = Vector3.new(1.5,0,0)
local bledw = Instance.new("Weld",bledp)
bledw.Part0 = lleg
bledw.Part1 = bledp
bledw.C0 = CFrame.new(0,1,0)
local bledw2 = Instance.new("Weld",blape)
bledw2.Part0 = torsy
bledw2.Part1 = blape
bledw2.C0 = CFrame.new(0,-.5,0)
local bledw3 = Instance.new("Weld",bledp2)
bledw.Part0 = rleg
bledw.Part1 = bledp2
bledw.C0 = CFrame.new(0,1,0)
end)()
--hip:BreakJoints()
--hip.Velocity = RootPart.CFrame.rightVector*-30
end
for i = 0, 2, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0, 1.4261663, 0.264408052, 1, 0, 0, 0, 0.76604414, -0.642788053, 0, 0.642788053, 0.76604414),
CFrame.new(1.45148087, 0.22618866, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1),
CFrame.new(-1.48567963, 0.220157385, 0, 0, 1, 0, 1, 0, 0, 0, 0, -1),
CFrame.new(0.500001848, -1.99999988, 1.62422657e-06, 0.939692736, 0, -0.342019886, 0, 1, 0, 0.342019916, 0, 0.939692736),
CFrame.new(-0.499995321, -1.99999988, -2.78651714e-06, 0.939692736, 0, 0.342019886, 0, 1, 0, -0.342019916, 0, 0.939692736),
}, .3, false)
end
end
attack = false
Humanoid.WalkSpeed = 8
end

function thecrush()
attack = true
Humanoid.WalkSpeed = 0
local grab = nil
local torsy = nil
local heddo = nil
local hum = nil
for i, v in pairs(FindNearestTorso(Torso.Position, 5)) do
if v:FindFirstChild('Head') and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 1 and v.Name ~= "Salvo_Starly" and v.Name ~= "NoobyGames12" and v.Name ~= "CKbackup" and v.Name ~= "Nebula_Zorua" then
hum = v:FindFirstChildOfClass("Humanoid")
torsy = v:FindFirstChild("UpperTorso") or v:FindFirstChild("Torso")
heddo = v:FindFirstChild("Head")
grab = v
end
end
if grab ~= nil and torsy ~= nil then
so(200632136, RootPart, .8, 1)
for i = 0,1.5,0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, 0.866025388),
CFrame.new(0, 1.49999118, 0, 0.866025388, 0, 0.500000238, 0, 1, 0, -0.500000238, 0, 0.866025388),
CFrame.new(1.50000226, 0.492404312, 0.086825721, 0.642795563, -0.766037941, -8.04662704e-07, -0.133022025, -0.111620016, -0.98480767, 0.754399955, 0.633030057, -0.17364876),
CFrame.new(-1.49999845, 0, 0, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
CFrame.new(0.500000119, -2, 0, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
CFrame.new(-0.499997556, -2, 1.63912773e-07, 0.766044557, 0, 0.642787695, 0, 1, 0, -0.642787695, 0, 0.766044557),
}, .3, false)
torsy.CFrame = RootPart.CFrame*CFrame.new(0,0,-1.3)
torsy.Velocity = Vector3.new()
end
so(240429615, torsy, 1, 1)
if torsy.Name == "UpperTorso" then
heddo.CFrame = RootPart.CFrame*CFrame.new(-2,-3,-1)*CFrame.Angles(math.rad(90),0,math.rad(-90))
else
heddo.CFrame = RootPart.CFrame*CFrame.new(-1,-3,-1)*CFrame.Angles(math.rad(90),0,math.rad(-90))
end
heddo.Anchored = true
for i = 0, 1.5, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 0.866025567, 3.5521316e-07, 0.500010252, 4.93042535e-06, 1.00000048, -7.94596781e-06, -0.50000006, -9.23901825e-06, 0.866042376),
CFrame.new(0.021950826, 1.50780511, -0.243860856, 0.852867603, 0.029702425, -0.521282434, 0.173647955, 0.925416946, 0.336825043, 0.492411494, -0.377797663, 0.784104764),
CFrame.new(0.956388712, -0.0409758762, -0.674532533, 0.766045928, 0.604021251, 0.219847187, -0.219834015, 0.567593455, -0.793417811, -0.604028642, 0.559465349, 0.567598879),
CFrame.new(-1.50000024, -1.14488239e-05, 8.18094031e-06, 1.00000012, 4.93042535e-06, 2.68220901e-07, 4.93042535e-06, 1.00000048, -7.94596781e-06, 2.68220901e-07, -7.94596781e-06, 1.00001991),
CFrame.new(0.499976635, -1.99998999, 3.24696302e-05, 0.866025567, 4.93042535e-06, -0.50000006, 3.5521316e-07, 1.00000048, -9.23901825e-06, 0.500010252, -7.94596781e-06, 0.866042376),
CFrame.new(-0.500013709, -2.00000167, 3.48316753e-05, 1.00000012, 4.93042535e-06, 2.68220901e-07, 4.93042535e-06, 1.00000048, -7.94596781e-06, 2.68220901e-07, -7.94596781e-06, 1.00001991),
}, .3, false)
--heddo.CFrame = RootPart.CFrame*CFrame.new(.5,-3,-2)*CFrame.Angles(math.rad(90),0,math.rad(90))
--heddo.Velocity = Vector3.new()
--hum.PlatformStand = true
end
for i = 0, 3, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0, 1.46578956, -0.0939694047, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(1.52320564, 0.359808445, 0, 0.866025388, -0.500000238, 0, 0.500000238, 0.866025388, 0, 0, 0, 1),
CFrame.new(-1.52320766, 0.359808564, 0, 0.866025388, 0.500000238, 0, -0.500000238, 0.866025388, 0, 0, 0, 1),
CFrame.new(0.5, -1.19999838, -0.600002289, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-0.5, -1.9999994, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
}, .3, false)
--heddo.CFrame = RootPart.CFrame*CFrame.new(.5,-3,-2)*CFrame.Angles(math.rad(90),0,math.rad(90))
--heddo.Velocity = Vector3.new()
--hum.PlatformStand = true
end
so(206082327,torsy,1,5)
killmortal(grab,0)
createSplatter(heddo.Position)
coroutine.wrap(function()
swait(3)
local passa = heddo.Position
heddo:Destroy()
for i=1,15 do
local bl = Instance.new("Part",torsy)
bl.CFrame = CFrame.new(passa) + Vector3.new(math.random(-10,10)/10,0,math.random(-10,10)/10)
local rand = math.random(2,7)/10
bl.Size = Vector3.new(rand,rand,rand)
bl.BrickColor = BrickColor.new("Maroon")
bl.Material = "Granite"
end
end)()
for i = 0, 3, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, -0.115425974, -0.607762575, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(0, 1.46579063, -0.0939693749, 1, 0, 0, 0, 0.939692438, 0.342020929, 0, -0.342020959, 0.939692438),
CFrame.new(1.52320361, 0.359808356, 2.34974073e-06, 0.86602509, -0.500000656, -3.33671437e-07, 0.500000715, 0.86602509, 2.08616257e-07, 1.78813934e-07, -3.87430191e-07, 1),
CFrame.new(-1.5232048, 0.359810114, 2.34974073e-06, 0.86602509, 0.500000656, 3.33671437e-07, -0.500000715, 0.86602509, 2.08616257e-07, -1.78813934e-07, -3.87430191e-07, 1),
CFrame.new(0.5, -1.6025629, -1.10711849, 1, 0, 0, 0, 0.939692736, -0.342019916, 0, 0.342019886, 0.939692736),
CFrame.new(-0.5, -1.99999857, 3.87430191e-06, 1, 0, 0, 0, 1, -2.98023224e-08, 0, -2.98023224e-08, 1),
}, .4, false)
end
end
attack = false
Humanoid.WalkSpeed = 8
end

function thehand()
attack = true
Humanoid.WalkSpeed = 2
local grab = nil
local torsy = nil
local totear = nil
local hum = nil
for i, v in pairs(FindNearestTorso(Torso.Position, 5)) do
if v:FindFirstChild('Head') and (v:FindFirstChild("Right Arm") or v:FindFirstChild("RightUpperArm")) and v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 1 and v.Name ~= "Salvo_Starly" and v.Name ~= "NoobyGames12" and v.Name ~= "CKbackup" and v.Name ~= "Nebula_Zorua" then
torsy = v:FindFirstChild("UpperTorso") or v:FindFirstChild("Torso")
grab = v
totear = v:FindFirstChild("Right Arm") or v:FindFirstChild("RightUpperArm")
hum = v:FindFirstChildOfClass("Humanoid")
end
end
if grab ~= nil and torsy ~= nil and totear ~= nil and hum ~= nil then
so(200632136, RootPart, .8, 1)
for i = 0,2,0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0, 1.49999475, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(1.0939827, 0.850001335, -0.515790701, 0, -0.342019916, 0.939692736, 1, 0, 0, 0, 0.939692736, 0.342019886),
CFrame.new(-0.900009155, 0.849995136, -0.549995422, 0, 0, -1, -1, 0, 0, 0, 1, 0),
CFrame.new(0.5, -1.99999952, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(-0.5, -1.99999952, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
}, .3, false)
torsy.CFrame = RootPart.CFrame*CFrame.new(0,0,-1.3)
torsy.Velocity = Vector3.new()
end
so(206082327,totear,1,5)
local bledp = Instance.new("Part",grab)
bledp.Size = Vector3.new(0,0,0)
bledp.Transparency = 1
bledp.CanCollide = false
local blpe = blpemit:Clone()
blpe.Parent = bledp
blpe.EmissionDirection = "Left"
local armmod = Instance.new("Model",chara)
armmod.Name = "TornArmdd"
Instance.new("Humanoid",armmod).MaxHealth = 0
for _, v in pairs(grab:GetChildren()) do
if v:IsA("Shirt") or v:IsA("CharacterMesh") then
v:Clone().Parent = armmod
end
end
local armp = totear
createSplatter(totear.Position)
armp:BreakJoints()
armp.Parent = armmod
so("206082327",armp,1,1)
local wel = Instance.new("Weld",armp)
wel.Part0 = RightArm
wel.Part1 = armp
wel.C0 = CFrame.new(0,-1.5,0) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0)
local blape = bledp:Clone()
blape.Parent = armmod
local bledw = Instance.new("Weld",bledp)
bledw.Part0 = torsy
bledw.Part1 = bledp
local bledw2 = Instance.new("Weld",blape)
bledw2.Part0 = armp
bledw2.Part1 = blape
bledw.C0 = CFrame.new(1,.5,0)
bledw2.C0 = CFrame.new(-.5,.5,0)
blpe.EmissionDirection = "Right"
grabhand = true
armo = armp
coroutine.wrap(function()
local currhp = hum.Health
for i=1,currhp do
if hum.Health > 0 then
hum.Health = currhp - (i-1)
swait(3)
end
end
if hum.Health > 0 then
killmortal(grab,0)
end
end)()
for i = 0, 1, 0.25 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 0.866021276, 0, -0.499997795, 0, 1, 0, 0.499997914, 0, 0.866021156),
CFrame.new(0, 1.49999189, 0, 0.866021276, 0, 0.499997914, 0, 1, 0, -0.499997795, 0, 0.866021156),
CFrame.new(1.50001729, 0.492406696, 0.0868175104, 0.642792583, -0.766034186, -7.97212124e-07, -0.133019835, -0.111618251, -0.984808207, 0.754396439, 0.633027494, -0.173645109),
CFrame.new(-1.38039482, 0.919607162, -0.300003946, 0, 0.500000179, -0.866022646, -1, 0, 0, 0, 0.866022587, 0.500000119),
CFrame.new(0.500005305, -1.99999964, -7.61445699e-06, 0.99999541, 0, 2.98023224e-08, 0, 1, 0, 2.98023224e-08, 0, 0.999995232),
CFrame.new(-0.499997407, -1.99999964, -5.43892384e-06, 0.766040862, 0, 0.642784715, 0, 1, 0, -0.642784536, 0, 0.766040802),
}, .3, false)
end
swait(30)
end
attack = false
Humanoid.WalkSpeed = 8
end

function armthrow()
attack = true
Humanoid.WalkSpeed = 2
for i = 0, 2, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.00874902681, -4.76837158e-07, -0.101877891, 0.342019022, 0, -0.939693093, 0, 1, 0, 0.939693093, 0, 0.342018992),
CFrame.new(0.0987267792, 1.49999189, 0.0266250018, 0.342019022, 0, 0.939693093, 0, 1, 0, -0.939693093, 0, 0.342018992),
CFrame.new(1.49999821, 0.499999046, -0.399993986, 1.00000012, -2.98023224e-08, 0, 0, 0, -1, -2.98023224e-08, 1.00000012, 0),
CFrame.new(-1.54019761, 0.669612885, -6.12696294e-06, 0.499998331, 0.866026461, 1.87754631e-06, -0.866026402, 0.499998331, 2.13891599e-06, 8.94069672e-07, -2.71201134e-06, 1.00000012),
CFrame.new(0.500005782, -1.99999893, -3.82959888e-06, 1.00000012, 0, -2.98023224e-08, 0, 1, 0, -2.98023224e-08, 0, 1.00000012),
CFrame.new(-0.499995083, -1.99999893, -1.18389726e-05, 0.17364721, 0, 0.984808028, 0, 1, 0, -0.984808028, 0, 0.17364718),
}, .3, false)
end
so(200632136, RootPart, .8, 1)
local haea = armo
haea.Weld:Destroy()
haea.Velocity = (Mouse.Hit.p-haea.Position).unit*200+Vector3.new(0,30,0)
haea.RotVelocity = Vector3.new(10,10,10)
haea.Touched:connect(function(hit)
if hit:IsDescendantOf(chara)==false and hit.Parent:FindFirstChildOfClass("Humanoid") and haea:FindFirstChild("HITA")==nil then
print("BOOBIES")
Instance.new("BoolValue",haea).Name = "HITA"
Effects.Wave.Create(BrickColor.new("White"), CFrame.new(haea.Position), 0, 0, 0, 1, .2, 1, 0.1)
killmortal(hit.Parent,50)
so(386946017,haea,.95,5)
swait(120)
for i=0,1,.05 do
haea.Transparency = i
swait()
end
haea.Parent:Destroy()
end	
end)
armo = nil
grabhand = false
for i = 0, 1, 0.1 do
swait()
PlayAnimationFromTable({
CFrame.new(-0.0371780396, -4.76837158e-07, -0.0659790039, 0, 0, 1, 0, 1, 0, -1, 0, 0),
CFrame.new(0.0118849091, 1.43262982, -0.187934548, 0.716230929, -0.163175121, -0.678518414, 0.349525958, 0.92541784, 0.146401539, 0.604023933, -0.342017084, 0.719846845),
CFrame.new(1.05005264, 0.0782932937, -0.664391041, 0.766043901, 0.642788291, -5.71537271e-07, -0.321393967, 0.383021057, -0.866025865, -0.556670964, 0.663414121, 0.499999195),
CFrame.new(-1.59158015, 0.575855374, -7.62939453e-06, 0.64278698, 0.766044974, 0, -0.766044974, 0.64278698, 0, 0, 0, 1),
CFrame.new(0.500011563, -1.99999893, -2.07126141e-06, 0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, 0.866025388),
CFrame.new(-0.946406364, -1.97320735, -7.62939453e-06, 0.866025388, 0.500000238, 0, -0.500000238, 0.866025388, 0, 0, 0, 1),
}, .3, false)
end
attack = false
Humanoid.WalkSpeed = 8
end

function smek()
attack = true
for i=0,1,.2 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 0.499998987, 0, -0.866025984, 0, 1, 0, 0.866025984, 0, 0.499998987),
CFrame.new(0, 1.49999714, 0, 0.499998987, 0, 0.866025984, 0, 1, 0, -0.866025984, 0, 0.499998987),
CFrame.new(1.6195364, 0.256343663, -3.60019794e-06, 0.939692736, -0.342020124, -8.94069672e-08, 0.342020154, 0.939692676, -4.35416268e-07, 2.08616257e-07, 3.87430191e-07, 1),
CFrame.new(-1.65980804, 0.323206544, 5.72385352e-06, 0.866025329, 0.500000238, -2.98023224e-07, -0.500000179, 0.866025388, -1.34623383e-06, -4.47034836e-07, 1.29640102e-06, 1.00000012),
CFrame.new(0.500001073, -2.00000095, -1.57952309e-06, 0.939692616, 0, -0.342020184, 0, 1, 0, 0.342020184, 0, 0.939692616),
CFrame.new(-0.499998212, -2.00000095, 1.49011612e-06, 0.766043544, 0, 0.642788708, 0, 1, 0, -0.642788708, 0, 0.766043544),
}, .3, false)
end
Humanoid.WalkSpeed = 2
so(536642316,armo,1,1)
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(-0.0116844922, 0, -0.381816059, 0.342019022, 0, 0.939693093, 0, 1, 0, -0.939693093, 0, 0.342018992),
CFrame.new(-0.0728889629, 1.49999714, 0.038963601, 0.342019022, 0, -0.939693093, 0, 1, 0, 0.939693093, 0, 0.342018992),
CFrame.new(1.06065702, 1.09677029, -0.161810428, 0.400286436, 0.242276207, 0.88378346, 0.734158754, -0.661962748, -0.151050553, 0.548435688, 0.709300876, -0.442843854),
CFrame.new(-1.59605861, 0.10887894, 1.11486224e-06, 0.984807909, 0.173648059, -2.23517418e-06, -0.173648059, 0.984807849, 3.82394944e-07, 2.29477882e-06, 1.86264515e-08, 1),
CFrame.new(0.685087919, -1.96527183, 0.0673596561, 0.92541647, -0.163175598, -0.342020869, 0.173647985, 0.984807849, 2.90093368e-07, 0.336824894, -0.0593915246, 0.939692438),
CFrame.new(-0.499999702, -2.00000095, 8.68737698e-06, 0.766045451, 0, 0.642786503, 0, 1, 0, -0.642786503, 0, 0.766045511),
}, .3, false)
if armo ~= nil then
mdmg(armo,3,"Arm")
end
end
swait(5)
Humanoid.WalkSpeed = 8
attack = false
end

function dash()
attack = true
	so("235097614",Torso,3,1)
	so("75356820",Torso,2,1)
	Effects.Ring.Create(BrickColor.new("Persimmon"),RootPart.CFrame, 1, 1, 0, 1, 1, .2, 0.05)
	PlayAnimationFromTable({
    CFrame.new(0, 0, 0, 1, 0, 0, 0, 0.999998331, 0, 0, 0, 0.999998331) * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-35), 0, 0),
    CFrame.new(0, 1.49999368, 8.34463322E-7, 1, 0, 0, 0, 0.999998033, -2.38418579E-7, 0, 2.38418579E-7, 0.999998033) * CFrame.Angles(math.rad(15), 0, 0),
    CFrame.new(0.663555026, 0.49231568, -0.850663185, 0.015370708, 0.692666352, 0.721096218, 0.999231637, 0.0153704779, -0.036063727, -0.0360642895, 0.721095979, -0.691897511) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),--CFrame.new(1.52564752, 0.0095030535, 0.16884166, 0.786316156, -0.464979529, -0.406817913, 0.489593357, 0.87058723, -0.0487444215, 0.376835734, -0.160846859, 0.912207723) * CFrame.new(0, 0.05 * math.cos(sine / 16), 0) * CFrame.Angles(0, 0, math.rad(3.5 * math.cos(sine / 16))),
    CFrame.new(-1.57927585, 0.317291111, 0.397556216, 0.809802711, 0.208654553, 0.548345804, -0.517000973, 0.695623755, 0.498816311, -0.277362049, -0.687437952, 0.671192646) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
    CFrame.new(0.49999693, -1.99999774, -8.94069672E-8, 0.965925872, 3.7422879E-7, -0.258818924, 0.0449429974, 0.984807849, 0.167731062, 0.254886955, -0.173647881, 0.951251388) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
    CFrame.new(-0.486001939, -1.31615341, 0.112926364, 1.00000167, 1.25169754E-6, -1.87754631E-6, 8.64267349E-7, 0.573579729, 0.819149494, -4.61935997E-7, -0.819151759, 0.573578417) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
    },1,false)
	for i = 1, 5 do
    for _, v in pairs(chara:children()) do
      if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        do
          local p = v:clone()
          p.Name = "trail"
          p.Parent = EffectModel
          p.Transparency = 0.5
          p.Anchored = true
          p.BrickColor = BrickColor.new("Really red")
          p.Material = "Neon"
          p:BreakJoints()
          p.CanCollide = false
		  if v == Head then
		  for a, b in pairs(p:children()) do
		  if b:IsA("Sound") then
		  b:Destroy()
		  end
		  end
		  end
          coroutine.resume(coroutine.create(function()
            for i = 1, 50 do
              swait()
              p.Transparency = i / 50
            end
            p:Destroy()
          end))
        end
      end
      if v.className == "Accessory" then
      end
    end
	RootPart.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector*10
	swait()
	end
attack = false
end

function scream()
attack = true
Humanoid.WalkSpeed = 0
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0.0885660946, 0.326515794, 1, 0, 0, 0, 0.939692736, -0.342019886, 0, 0.342019916, 0.939692736),
CFrame.new(0, 1.43158889, 0.18794021, 1, 0, 0, 0, 0.939692438, -0.342020929, 0, 0.342020959, 0.939692438),
CFrame.new(1.5, 0.099998951, 9.56654503e-07, 0, -1, 0, -1, 0, -2.98023224e-08, -2.98023224e-08, 0, -1),
CFrame.new(-1.5, 0.099998951, 9.56654503e-07, 0, 1, 0, 1, 0, -2.98023224e-08, 2.98023224e-08, 0, -1),
CFrame.new(0.696960211, -2.04165077, 0.395629227, 0.984807849, -0.173647985, 0, 0.163175747, 0.925416768, 0.342019916, -0.0593910627, -0.336823881, 0.939692736),
CFrame.new(-0.696963668, -2.04164839, 0.395628393, 0.984807849, 0.173647985, 0, -0.163175747, 0.925416768, 0.342019916, 0.0593910627, -0.336823881, 0.939692736),
}, .3, false)
end
so(51322486,Torso,.5,5)
so(90696602,Torso,.5,5)
for i=1,120 do
mdmg(Torso,20,"Scream")
Effects.Ring.Create(BrickColor.new("Really black"),RootPart.CFrame*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))), 1, 1, 0, 2, 2, .2, 0.05)
Effects.Wave.Create(BrickColor.new("Really black"),RootPart.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(0,math.random(-50,50),0), 1, 0, 1, 2, .1, 2, 0.05)
swait()
end
Humanoid.WalkSpeed = 8
attack = false
end

function handcrack()
attack = true
Humanoid.WalkSpeed = 0
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
CFrame.new(0, 1.4657917, -0.0939691663, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(0.849929154, 0.669377863, -0.285191476, 0.133021966, 0.754403889, 0.642790735, 0.989228785, -0.0610861331, -0.133022368, -0.0610869862, 0.65356195, -0.754403949),
CFrame.new(-0.949649334, 0.569002092, -0.378571123, -0, -0.866025269, -0.500000298, -0.984807849, 0.0868240297, -0.150383547, 0.173647985, 0.492404163, -0.852868497),
CFrame.new(0.499994665, -1.99999988, -9.83476639e-07, 0.939692736, 0, -0.342019886, 0, 1, 0, 0.342019916, 0, 0.939692736),
CFrame.new(-0.500002503, -1.99999988, -1.78813934e-07, 0.939692736, 0, 0.342019886, 0, 1, 0, -0.342019916, 0, 0.939692736),
}, .3, false)
end
so(240428955,Head,1,5)
swait(10)
Humanoid.WalkSpeed = 8
attack = false
end

function getoverhere()
attack = true
local dude = Mouse.Target.Parent
local torsy = dude:FindFirstChild("UpperTorso") or dude:FindFirstChild("Torso")
if dude~=nil and dude:FindFirstChildOfClass("Humanoid") and torsy~=nil then
Humanoid.WalkSpeed = 0
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)*CFrame.Angles(0,math.rad(360*i),0),
CFrame.new(0, 1.5255599, -0.222141176, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(0.200967461, 0.899999142, -0.749996543, 0, 0.866025984, 0.499998987, 1, 0, 0, 0, 0.499998987, -0.866025984),
CFrame.new(-1.52556288, 0.222140282, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736, 0, 0, 0, 1),
CFrame.new(0.499997377, -2, -9.01520252e-07, 0.984807849, 0, -0.173647985, 0, 1, 0, 0.173647985, 0, 0.984807849),
CFrame.new(-0.500002205, -2, 7.30156898e-07, 0.939692736, 0, 0.342019886, 0, 1, 0, -0.342019916, 0, 0.939692736),
}, .3, false)
end
so(743521497,RightArm,1,1)
coroutine.wrap(function()
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(0.00389102311, 0, -0.0404044762, 2.68220901e-07, 0, 1.00000536, 0, 1, 0, -1.00000536, 0, 2.68220901e-07),
CFrame.new(1.78813934e-06, 1.52555692, -0.222144455, 0.342020005, -1.01929949e-08, -0.939692736, 0.321392, 0.939693451, 0.116977029, 0.883023024, -0.342018187, 0.321393877),
CFrame.new(1.50095332, 0.999999046, 0.0500030518, 0, -1, 0, 1, 0, 0, 0, 0, 1),
CFrame.new(-1.52557385, 0.222139984, 0, 0.939693272, 0.342018306, 0, -0.342018306, 0.939693332, 0, 0, 0, 1),
CFrame.new(0.500000775, -2, 1.69873238e-06, 0.984807789, 0, -0.173648104, 0, 1, 0, 0.173648089, 0, 0.984807789),
CFrame.new(-0.500008583, -2, 8.94069672e-08, 0.939692736, 0, 0.342020065, 0, 1, 0, -0.342020094, 0, 0.939692616),
}, .4, false)
end
end)()
so(138092011,Head,1,1)
local spikeh = Instance.new("Part",chara)
spikeh.CFrame = Torso.CFrame
spikeh.Size = Vector3.new(.5,.5,1)
spikeh.Material = "Metal"
spikeh.CanCollide = false
spikeh.Anchored = true
spikeh.BrickColor = BrickColor.new("Crimson")
local blast = Instance.new("Part",EffectModel)
blast.Size = Vector3.new(0,1,1)
blast.Transparency = 1
blast.Anchored = true
blast.CanCollide = false
blast.CFrame = Torso.CFrame
local meh = Instance.new("SpecialMesh",spikeh)
meh.MeshType = "Wedge"
meh.Offset = Vector3.new(0,0,-1)
meh.Scale = Vector3.new(1,2,2)
local tex1 = Instance.new("Texture",blast)
tex1.Face = "Right"
tex1.Texture = "rbxassetid://187946416"
tex1.Color3 = Color3.new(1,0,0)
local tex2 = tex1:Clone()
tex2.Parent = blast
tex2.Face = "Left"
local origpos = Vector3.new()
for i=0,1,.1 do
swait()
local origpos = (RightArm.CFrame*CFrame.new(0,-1,0)).p
spikeh.CFrame = clerp(spikeh.CFrame,torsy.CFrame,.4)
spikeh.CFrame = CFrame.new(spikeh.Position,spikeh.Position+(torsy.Position-spikeh.Position).unit)
blast.Size = Vector3.new(0,1,(origpos-spikeh.Position).magnitude)
blast.CFrame = CFrame.new((origpos + spikeh.Position)/2,spikeh.Position)
end
local staypos = torsy.CFrame
so(154965973,spikeh,.7,2)
createSplatter(torsy.Position)
for i=1,30 do
swait()
torsy.CFrame = staypos
end
coroutine.wrap(function()
for i=0,1,.1 do
swait()
PlayAnimationFromTable({		
CFrame.new(-0.0371780396, -4.76837158e-07, -0.0659790039, 0, 0, 1, 0, 1, 0, -1, 0, 0),
CFrame.new(0.0118849091, 1.43262982, -0.187934548, 0.716230929, -0.163175121, -0.678518414, 0.349525958, 0.92541784, 0.146401539, 0.604023933, -0.342017084, 0.719846845),
CFrame.new(1.05005264, 0.0782932937, -0.664391041, 0.766043901, 0.642788291, -5.71537271e-07, -0.321393967, 0.383021057, -0.866025865, -0.556670964, 0.663414121, 0.499999195),
CFrame.new(-1.59158015, 0.575855374, -7.62939453e-06, 0.64278698, 0.766044974, 0, -0.766044974, 0.64278698, 0, 0, 0, 1),
CFrame.new(0.500011563, -1.99999893, -2.07126141e-06, 0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, 0.866025388),
CFrame.new(-0.946406364, -1.97320735, -7.62939453e-06, 0.866025388, 0.500000238, 0, -0.500000238, 0.866025388, 0, 0, 0, 1),
}, .4, false)
end
end)()
so(28144425,RightArm,.265,2)
for i=0,3,.1 do
swait()
local origpos = (RightArm.CFrame*CFrame.new(0,-1,0)).p
torsy.CFrame = clerp(torsy.CFrame,RootPart.CFrame*CFrame.new(0,0,-2),.1)
torsy.Velocity = Vector3.new(0,0,0)
spikeh.CFrame = torsy.CFrame
blast.Size = Vector3.new(0,1,(origpos-spikeh.Position).magnitude)
blast.CFrame = CFrame.new((origpos + spikeh.Position)/2,spikeh.Position)
end
spikeh:Destroy()
blast:Destroy()
Humanoid.WalkSpeed = 8
end
attack = false
end

local notallowed={
"Right Arm",
"Left Arm",
"Right Leg",
"Left Leg",
"Head",
"HumanoidRootPart",
"Torso",
"LeftFoot",
"LeftHand",
"LeftLowerArm",
"LeftUpperArm",
"LeftUpperLeg",
"LeftLowerLeg",
"RightFoot",
"RightHand",
"RightLowerArm",
"RightUpperArm",
"RightUpperLeg",
"RightLowerLeg",
"LowerTorso",
"UpperTorso",
}

function grabobj()
attack = true
Humanoid.WalkSpeed = 2
local grab = nil
local torsy = nil
local totear = nil
local hum = nil
local targ = Mouse.Target
if targ ~= nil and targ:IsA("BasePart") and targ.Anchored == false and (targ.Position-RightArm.Position).magnitude<=5 then
for i,v in pairs(notallowed) do
if targ.Name == v then
Humanoid.WalkSpeed = 8
attack = false 
return 
end
end
totear = targ
end
--for i, v in pairs(FindNearestObject(Torso.Position, 5)) do
--if totear ~= nil then
--totear = v
--end
--end
if totear ~= nil then
so(200632136, RootPart, .8, 1)
for i = 0,1,.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, 0.866025388),
CFrame.new(0, 1.49999118, 0, 0.866025388, 0, 0.500000238, 0, 1, 0, -0.500000238, 0, 0.866025388),
CFrame.new(1.50000226, 0.492404312, 0.086825721, 0.642795563, -0.766037941, -8.04662704e-07, -0.133022025, -0.111620016, -0.98480767, 0.754399955, 0.633030057, -0.17364876),
CFrame.new(-1.49999845, 0, 0, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
CFrame.new(0.500000119, -2, 0, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
CFrame.new(-0.499997556, -2, 1.63912773e-07, 0.766044557, 0, 0.642787695, 0, 1, 0, -0.642787695, 0, 0.766044557),
}, .3, false)
end
so(200632136, RootPart, .8, 1)
for i = 0,1,.1 do
swait()
PlayAnimationFromTable({
CFrame.new(0, 0, 0, 0.866025388, 0, 0.500000238, 0, 1, 0, -0.500000238, 0, 0.866025388),
CFrame.new(0.0219391882, 1.50780332, -0.243838966, 0.852868617, 0.0296956748, -0.521280766, 0.173647985, 0.925416708, 0.336823881, 0.492404163, -0.377785802, 0.784102201),
CFrame.new(1.50000226, 0.469847411, -0.171007544, 0.939692974, -0.342019379, -5.81145287e-07, 0.116976947, 0.321393847, -0.939692736, 0.321393311, 0.883022606, 0.342019975),
CFrame.new(-1.50000036, 0, -3.81469818e-06, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
CFrame.new(0.500001073, -1.99999905, 7.15255737e-07, 0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, 0.866025388),
CFrame.new(-0.500000119, -1.99999905, -3.81469818e-06, 1.00000024, 0, 0, 0, 1, 0, 0, 0, 1.00000024),
}, .3, false)
end
so(200632136, RootPart, .8, 1)
local armmod = Instance.new("Model",chara)
armmod.Name = "PickedUp"
local armp = totear
armp:BreakJoints()
armp.Parent = armmod
local wel = Instance.new("Weld",armp)
wel.Part0 = RightArm
wel.Part1 = armp
wel.C0 = CFrame.new(0,-1.5,0)
grabhand = true
armo = armp
end
attack = false
Humanoid.WalkSpeed = 8
end



Mouse.Button1Down:connect(function()
	if attack == false then
	if grabhead == true then
	headthrow()
	elseif grabhand == true then
	smek()	
--	else
--	if Anim == "Jump" or Anim == "Fall" then
--	--asmek()
--	else
--	--smek()
--	end
	end
	end
end)

local sprintt = 0


Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false then
	if k == 'z' and grabhead == false and grabhand == false then
	thenatsuki()
	elseif k == 'x' and grabhead == false and grabhand == false then
	xhold = true
	thesurou()
	elseif k == 'c' and grabhead == false and grabhand == false then
	therip()
	elseif k == 'v' and grabhead == false and grabhand == false then
	thecrush()
	elseif k == 'b' then
	if grabhead == true then
	headthrow()	
	else
	thehead()
	end
	elseif k == 'n' then
	if grabhand == true then
	armthrow()
	else
	thehand()
	end
	elseif k == 'e' then
	dash()
	elseif k == 'q' then
	getoverhere()
	elseif k == 'g' then
	handcrack()
	elseif k == 'h' then
	scream()
	elseif k == 'r' then
	if grabhand == true then
	armthrow()
	else
	grabobj()
	end
	end
	end
end)

Mouse.KeyUp:connect(function(k)
	k = k:lower()
	if k == 'x' then
	xhold = false
	end
end)


coroutine.wrap(function()
while 1 do
swait()
if doe <= 360 then
	doe = doe + 2
else
	doe = 0
end
end
end)()
while true do
	swait()
	for i, v in pairs(chara:GetChildren()) do
		if v:IsA("Part") then
			v.Material = "SmoothPlastic"
		elseif v:IsA("Accessory") then
			v:WaitForChild("Handle").Material = "SmoothPlastic"
		end
	end
while true do
swait()
	if sprintt >= 1 then
	sprintt = sprintt - 1
	end
	
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, chara)
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
		PlayAnimationFromTable({
CFrame.new(0, 0.0382082276, -0.0403150208, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),
CFrame.new(0, 1.46579528, 0.0939689279, 1, 0, 0, 0, 0.939692855, -0.342019796, 0, 0.342019796, 0.939692855),
CFrame.new(1.20945489, -0.213504896, 3.55388607e-07, 0.939692736, 0.342019916, 1.53461215e-07, -0.342019945, 0.939692736, 1.93715096e-07, -8.56816769e-08, -2.23517418e-07, 1.00000012),
CFrame.new(-1.20945573, -0.213503733, 5.0439985e-07, 0.939692736, -0.342019916, -1.53461215e-07, 0.342019945, 0.939692736, 1.93715096e-07, 8.56816769e-08, -2.23517418e-07, 1.00000012),
CFrame.new(0.5, -1.99739456, -0.0180913229, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012),
CFrame.new(-0.5, -1.30000103, -0.39999947, 1, 0, 0, 0, 0.939692676, 0.342020601, 0, -0.342020601, 0.939692676),
		}, .3, false)
					end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
		PlayAnimationFromTable({
CFrame.new(0, -0.0646628663, 0.0399149321, 1, 0, 0, 0, 0.984807849, -0.173647985, 0, 0.173647985, 0.984807849),
CFrame.new(0, 1.4913609, -0.128171027, 1, 0, 0, 0, 0.939692855, 0.342019796, 0, -0.342019796, 0.939692855),
CFrame.new(1.55285025, 0.466259956, -9.26282269e-08, 0.766043842, -0.642788351, -6.46188241e-08, 0.642788291, 0.766043961, -7.4505806e-08, 1.04308128e-07, 1.49011612e-08, 1.00000012),
CFrame.new(-1.5605253, 0.475036323, -2.10609159e-07, 0.766043842, 0.642788351, 6.46188241e-08, -0.642788291, 0.766043961, -7.4505806e-08, -1.04308128e-07, 1.49011612e-08, 1.00000012),
CFrame.new(0.500000954, -1.9973948, -0.0180922765, 1, 0, 0, 0, 1.00000012, 0, 0, 0, 1.00000012),
CFrame.new(-0.499999046, -1.30000043, -0.400000483, 1, 0, 0, 0, 0.939692855, 0.342019796, 0, -0.342019796, 0.939692855),
		}, .3, false)
					end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
		PlayAnimationFromTable({
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0,.05 * math.cos((sine)/10), 0),
CFrame.new(0, 1.4657923, -0.0939692855, 1, 0, 0, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736),
CFrame.new(1.20945823, -0.213502824, 0, 0.939692736, 0.342019886, 0, -0.342019916, 0.939692736, 0, 0, 0, 1),
CFrame.new(-1.20945406, -0.213503301, 0, 0.939692736, -0.342019886, 0, 0.342019916, 0.939692736, 0, 0, 0, 1),
CFrame.new(0.499998242, -1.99999988, 3.12924385e-07, 0.939692736, 0, -0.342019886, 0, 1, 0, 0.342019916, 0, 0.939692736) * CFrame.new(0,-.05 * math.cos((sine)/10), 0),
CFrame.new(-0.500002503, -1.99999988, -1.78813934e-07, 0.939692736, 0, 0.342019886, 0, 1, 0, -0.342019916, 0, 0.939692736) * CFrame.new(0,-.05 * math.cos((sine)/10), 0),
		}, .3, false)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
		PlayAnimationFromTable({		
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0- .08 * math.cos((sine) / 5), 0) * CFrame.Angles(0, 0, 0),
CFrame.new(0, 1.48263013, -0.0984808952, 1, 0, 0, 0, 0.984807849, 0.173647985, 0, -0.173647985, 0.984807849),
CFrame.new(1.5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, -.5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 10)), 0, 0), 
CFrame.new(-1.5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) * CFrame.new(0, 0, .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 - 30 * math.cos((sine) / 10)), 0, 0), 
CFrame.new(0.540300786, -1.99793816, -9.82598067e-07, 0.998698533, -0.0510031395, 6.36324955e-07, 0.0510031395, 0.998698533, -1.00461093e-05, -8.35937328e-08, 1.08393433e-05, 1.00000024) * CFrame.new(0, 0, 0+ .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 - 30 * math.cos((sine) / 10)), 0, 0), 
CFrame.new(-0.539563596, -1.99794078, 1.12228372e-06, 0.998635888, 0.0523072146, -1.77852357e-07, -0.0523072146, 0.998635888, -1.00715051e-05, -3.89727461e-07, 1.08406466e-05, 1.00000024) * CFrame.new(0, 0, 0- .5 * math.cos((sine) / 10)) * CFrame.Angles(math.rad(0 + 30 * math.cos((sine) / 10)), 0, 0), 
		}, .3, false)
			end
		end
	if 0 < #Effects then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if Thing[2] == "Shoot" then
						local Look = Thing[1]
						local move = 30
						if Thing[8] == 3 then
							move = 10
						end
						local hit, pos = rayCast(Thing[4], Thing[1], move, m)
						if Thing[10] ~= nil then
							da = pos
							cf2 = CFrame.new(Thing[4], Thing[10].Position)
							cfa = CFrame.new(Thing[4], pos)
							tehCF = cfa:lerp(cf2, 0.2)
							Thing[1] = tehCF.lookVector
						end
						local mag = (Thing[4] - pos).magnitude
						Effects["Head"].Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.2)
						if Thing[8] == 2 then
							Effects["Ring"].Create(Torso.BrickColor, CFrame.new((Thing[4] + pos) / 2, pos) * CFrame.Angles(1.57, 0, 0) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0), 1, 1, 0.1, 0.5, 0.5, 0.1, 0.1, 1)
						end
						Thing[4] = Thing[4] + Look * move
						Thing[3] = Thing[3] - 1
						if 2 < Thing[5] then
							Thing[5] = Thing[5] - 0.3
							Thing[6] = Thing[6] - 0.3
						end
						if hit ~= nil then
							Thing[3] = 0
							if Thing[8] == 1 or Thing[8] == 3 then
								Damage(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, "", 1)
							else
								if Thing[8] == 2 then
									Damage(hit, hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0, "", 1)
									if (hit.Parent:FindFirstChildOfClass("Humanoid")) ~= nil or (hit.Parent.Parent:FindFirstChildOfClass("Humanoid")) ~= nil then
										ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
										ref.Anchored = true
										ref.CFrame = CFrame.new(pos)
										CFuncs["Sound"].Create("161006093", ref, 1, 1.2)
										game:GetService("Debris"):AddItem(ref, 0.2)
										Effects["Block"].Create(Torso.BrickColor, CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 1, 10, 10, 10, 0.1, 2)
										Effects["Ring"].Create(BrickColor.new("Bright yellow"), CFrame.new(ref.Position) * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 1, 1, 0.1, 4, 4, 0.1, 0.1)
										MagnitudeDamage(ref, 15, Thing[5] / 1.5, Thing[6] / 1.5, 0, "Normal", "", 1)
									end
								end
							end
							ref = CFuncs.Part.Create(workspace, "Neon", 0, 1, BrickColor.new("Really red"), "Reference", Vector3.new())
							ref.Anchored = true
							ref.CFrame = CFrame.new(pos)
							Effects["Sphere"].Create(Torso.BrickColor, CFrame.new(pos), 5, 5, 5, 1, 1, 1, 0.07)
							game:GetService("Debris"):AddItem(ref, 1)
						end
						if Thing[3] <= 0 then
							table.remove(Effects, e)
						end
					end
					do
						do
							if Thing[2] == "FireWave" then
								if Thing[3] <= Thing[4] then
									Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(0, 1, 0)
									Thing[3] = Thing[3] + 1
									Thing[6].Scale = Thing[6].Scale + Vector3.new(Thing[5], 0, Thing[5])
								else
									Part.Parent = nil
									table.remove(Effects, e)
								end
							end
							if Thing[2] ~= "Shoot" and Thing[2] ~= "Wave" and Thing[2] ~= "FireWave" then
								if Thing[1].Transparency <= 1 then
									if Thing[2] == "Block1" then
										Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
										Mesh = Thing[7]
										Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
										Thing[1].Transparency = Thing[1].Transparency + Thing[3]
									else
										if Thing[2] == "Block2" then
											Thing[1].CFrame = Thing[1].CFrame
											Mesh = Thing[7]
											Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
											Thing[1].Transparency = Thing[1].Transparency + Thing[3]
										else
											if Thing[2] == "Fire" then
												Thing[1].CFrame = CFrame.new(Thing[1].Position) + Vector3.new(0, 0.2, 0)
												Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
												Thing[1].Transparency = Thing[1].Transparency + Thing[3]
											else
												if Thing[2] == "Cylinder" then
													Mesh = Thing[7]
													Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
													Thing[1].Transparency = Thing[1].Transparency + Thing[3]
												else
													if Thing[2] == "Blood" then
														Mesh = Thing[7]
														Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 0.5, 0)
														Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
														Thing[1].Transparency = Thing[1].Transparency + Thing[3]
													else
														if Thing[2] == "Elec" then
															Mesh = Thing[10]
															Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
															Thing[1].Transparency = Thing[1].Transparency + Thing[3]
														else
															if Thing[2] == "Disappear" then
																Thing[1].Transparency = Thing[1].Transparency + Thing[3]
															else
																if Thing[2] == "Shatter" then
														Thing[1].Transparency = Thing[1].Transparency + Thing[3]
														Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
														Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
														Thing[6] = Thing[6] + Thing[5]
																end
															end
														end
													end
												end
											end
										end
									end
								else
									Part.Parent = nil
									table.remove(Effects, e)
								end
							end
						end
					end
				end
			end
		end
	end
end
end
