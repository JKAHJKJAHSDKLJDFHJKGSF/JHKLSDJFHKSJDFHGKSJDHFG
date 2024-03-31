--By Ruffles14
mouse = game.Players.LocalPlayer:GetMouse()
local rhandclone = game.Players.LocalPlayer.Character.Torso["Right Shoulder"]:Clone()
local rhandweld = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
rhandweld.Part0 = game.Players.LocalPlayer.Character.Torso
rhandweld.Part1 = game.Players.LocalPlayer.Character["Right Arm"]
rhandweld.C0 = CFrame.new(1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
local lhandclone = game.Players.LocalPlayer.Character.Torso["Left Shoulder"]:Clone()
local lhandweld = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
lhandweld.Part0 = game.Players.LocalPlayer.Character.Torso
lhandweld.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
lhandweld.C0 = CFrame.new(-1.5, 0, 0, 1, -1.6395192e-43, 0, -1.6395192e-43, 1, 0, 0, 0, 1)
local rootjointclone = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint:Clone()
game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint:Remove()
local humanoidrootpart = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
humanoidrootpart.Part0 = game.Players.LocalPlayer.Character.HumanoidRootPart
humanoidrootpart.Part1 = game.Players.LocalPlayer.Character.Torso
local heed = game.Players.LocalPlayer.Character.Torso["Neck"]:Clone()
local headweld = Instance.new("Weld", game.Players.LocalPlayer.Character.Torso)
headweld.Part0 = game.Players.LocalPlayer.Character.Torso
headweld.Part1 = game.Players.LocalPlayer.Character.Head
headweld.C0 = headweld.C0 * CFrame.new(0,1.5,0)
game.Players.LocalPlayer.Character.Torso.Neck:Remove()
using = false
--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
    local env = getfenv(func)
    local newenv = setmetatable({},{
        __index = function(self,k)
            if k=="script" then
                return var
            else
                return env[k]
            end
        end,
    })
    setfenv(func,newenv)
    return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Part0 = Instance.new("Part")
SpecialMesh1 = Instance.new("SpecialMesh")
Part0.Parent = mas
Part0.Rotation = Vector3.new(-17.039999, 72.0800018, -73.7399979)
Part0.Size = Vector3.new(0.48999998, 2.96999931, 1.94999981)
Part0.CFrame = CFrame.new(1.99671245, 4.08856773, -0.616976917, 0.0861581191, 0.29545939, 0.95146209, -0.99592489, 0, 0.090184398, 0.0266458243, -0.955355108, 0.294255406)
Part0.BottomSurface = Enum.SurfaceType.Smooth
Part0.TopSurface = Enum.SurfaceType.Smooth
Part0.Position = Vector3.new(1.99671245, 4.08856773, -0.616976917)
Part0.Orientation = Vector3.new(-5.17000008, 72.8099976, -90)
Part0.CanCollide = false
SpecialMesh1.Parent = Part0
SpecialMesh1.MeshId = "rbxassetid://441572308"
SpecialMesh1.Scale = Vector3.new(0.0209999997, 0.0209999997, 0.0209999997)
SpecialMesh1.TextureId = "rbxassetid://441572332"
SpecialMesh1.MeshType = Enum.MeshType.FileMesh
SpecialMesh1.Scale = Vector3.new(0.0209999997, 0.0209999997, 0.0209999997)
for i,v in pairs(mas:GetChildren()) do
    v.Parent = game:GetService("Players").LocalPlayer.Character
    pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
    spawn(function()
        pcall(v)
    end)
end
Part0:BreakJoints()
cananimate = true
canhit = false
local weld = Instance.new("Weld", game.Players.LocalPlayer.Character["Right Arm"])
weld.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
weld.Part1 = Part0
weld.C0 = CFrame.new(0.0769970417, -1.17027426, -1.17937994, 0, 0, 1, -0.999999881, 0, 0, 0, -1, 0)
for i = 0,1 , 0.03 do
    headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.962374032, 0, 0.271727562, 0, 1, 0, -0.271727562, 0, 0.962374032),i)
    humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.955355227, 0, -0.295459419, 0, 1, 0, 0.295459419, 0, 0.955355227),i)
    lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.53559077, 0.0383267403, 0, 0.997264206, 0.0739177391, 0, -0.0739177391, 0.997264266, 0, 2.98023224e-08, 1.86264515e-09, 0.999999881),i)
    rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.54305458, 0.047129631, 2.98023224e-08, 0.99592495, -0.0901843905, 0, 0.090184398, 0.995925009, 0, 0, 0, 0.999999881),i)
    game:GetService("RunService").RenderStepped:wait()
end
function swing()
    if not using then
        using = true
        cananimate = false
        for i = 0,1 , 0.045 do
            weld.C0 = weld.C0:lerp(CFrame.new(0.958130836, -0.815908253, -0.0419664383, 0.379335552, 0.92491132, -0.0253674984, -0.913223445, 0.378668189, 0.150445476, 0.148754537, -0.0339030921, 0.988292694),i)
            headweld.C0 = headweld.C0:lerp(CFrame.new(-4.65661287e-10, 1.49999952, 0, 0.601507425, -2.32830644e-10, 0.798867226, 3.0559022e-10, 1, 0, -0.798867226, -4.65661287e-10, 0.601507425),i)
            humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.63088727, -0.00573391188, -0.775853336, 0, 0.999972701, -0.00739025697, 0.775874496, 0.00466241874, 0.630870044),i)
            lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(0.0363237262, 0.350219727, -1.1563791, 0.495106995, -0.857149601, 0.1419992, 0.110766649, -0.0998312235, -0.988819599, 0.861742377, 0.505300522, 0.0455164276),i)
            rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.50056481, 0.516354084, -0.499166548, 0.995925009, -0.00520473719, 0.09003409, 0.0901844054, 0.0574772507, -0.994265079, -2.98023224e-08, 0.998333335, 0.057712432),i)
            game:GetService("RunService").RenderStepped:wait()
        end
        canhit = true
        for i = 0,1 , 0.08 do
            weld.C0 = weld.C0:lerp(CFrame.new(0.968596578, -1.15575922, 0.178524971, 0.0531506836, 0.988890588, -0.13881819, -0.988834679, 0.0327400565, -0.145376131, -0.13921617, 0.144995078, 0.979589343),i)
            headweld.C0 = headweld.C0:lerp(CFrame.new(-0.0249017328, 1.48724031, 2.04332173e-06, 0.499998868, 0, -0.866026163, 0, 1, 0, 0.866026163, 0, 0.499998868),i)
            humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.305942208, 0, -0.952050149, 0, 1, 0, 0.952050149, 0, 0.305942208):inverse(),i)
            lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.07653618, 0.305679321, -0.818206966, 0.707105398, -0.707108259, 4.32133675e-07, 0.122787982, 0.122786887, -0.984807909, 0.696365714, 0.696363032, 0.173647687),i)
            rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(0.74788636, 0.363031864, -0.7663396, 0.70710665, 0.707106948, -2.23517418e-08, -0.0616280138, 0.061627958, -0.99619478, -0.704416275, 0.704416037, 0.0871551335),i)
            game:GetService("RunService").RenderStepped:wait()
        end
        canhit = false
        using = false
        cananimate = true
    end
end
mouse.Button1Down:connect(swing)
function hittie(part)
    if canhit then
        local humanoid = part.Parent:findFirstChildOfClass("Humanoid")
        if humanoid then
            canhit = false
            using = false
            local uptor = humanoid.Parent:findFirstChild("UpperTorso")
            if uptor and uptor.Parent.Name ~= game.Players.LocalPlayer.Name then
                    humanoid.Parent:BreakJoints()
                    while humanoid.Health >= 0.001 do
                        game:GetService("RunService").RenderStepped:wait()
                    end
                    if humanoid.Parent:findFirstChild("HumanoidRootPart") then
                        humanoid.Parent.HumanoidRootPart.CanCollide = false
                    end
                    local function makeballlimb(attachone, attachtwo, upperang, lowang, twist)
                        local constraint = Instance.new("BallSocketConstraint", humanoid.Parent)
                        constraint.Attachment0 = attachone
                        constraint.Attachment1 = attachtwo
                        constraint.LimitsEnabled = true
                        constraint.TwistLimitsEnabled = true
                        constraint.TwistLowerAngle = lowang
                        constraint.TwistUpperAngle = upperang
                        constraint.UpperAngle = twist
                    end
                    local function makehingelimb(attachone, attachtwo, upperang, lowang)
                        local constraint = Instance.new("HingeConstraint", humanoid.Parent)
                        constraint.Attachment0 = attachone
                        constraint.Attachment1 = attachtwo
                        constraint.LimitsEnabled = true
                        constraint.LowerAngle = lowang
                        constraint.UpperAngle = upperang
                    end
                    for i,v in pairs(humanoid.Parent:GetChildren()) do --scan player
                        if v.ClassName == "Accessory" then
                            local findhandle = v:findFirstChild("Handle") --finding handle in accesorry
                            if findhandle then
                                local attach = findhandle:findFirstChildOfClass("Attachment")
                                for q,w in pairs(humanoid.Parent:GetChildren()) do --scan player
                                    if w.Name == "UpperTorso" or w.Name == "Head" then
                                        attach1 = w:findFirstChild(attach.Name) --finding attachment in head/uppertorso
                                    end
                                end
                                if attach and attach1 then
                                    local constraint = Instance.new("HingeConstraint", humanoid.Parent) --making fake weld
                                    constraint.Attachment0 = attach
                                    constraint.Attachment1 = attach1
                                    constraint.LimitsEnabled = true
                                    constraint.LowerAngle = 0
                                    constraint.UpperAngle = 0
                                end
                            end
                        end
                    end
                    if humanoid.Parent:findFirstChild("Head") and humanoid.Parent:findFirstChild("UpperTorso") then
                                local attachment = Instance.new("Attachment", humanoid.Parent.Head)
                                attachment.Position = Vector3.new(0, -0.5, 0)
                                attachment.Name = "lol"
                                attachment.Visible = false
                                humanoid.Parent.UpperTorso.NeckAttachment.Visible = false
                                humanoid.Parent.UpperTorso.NeckAttachment.Position = humanoid.Parent.UpperTorso.NeckAttachment.Position + Vector3.new(0,0,0)
                                local ball = Instance.new("BallSocketConstraint", humanoid.Parent)
                                ball.Attachment0 = humanoid.Parent.UpperTorso.NeckAttachment
                                ball.Attachment1 = attachment
                                ball.LimitsEnabled = true
                                ball.TwistLimitsEnabled = true
                                ball.UpperAngle = 40
                                ball.Restitution = 0.5
                                ball.TwistUpperAngle = 40
                                ball.TwistLowerAngle = -40
                                local  collidepartofleftleg = Instance.new("Part", humanoid.Parent.UpperTorso)
                                collidepartofleftleg.Name = "Bone"
                                collidepartofleftleg.Size = Vector3.new(0.7,0.7,0.7)
                                collidepartofleftleg.Transparency = 1
                                collidepartofleftleg:BreakJoints()
                                local weeld = Instance.new("Weld", collidepartofleftleg)
                                weeld.Part0 = collidepartofleftleg
                                weeld.Part1 = humanoid.Parent["Head"]
                                if humanoid.Parent.Head:findFirstChild("Neck") then
                                    humanoid.Parent.Head.Neck:destroy()
                                end
                                if humanoid.Parent.Head:findFirstChild("face") then
                                    humanoid.Parent.Head.face.Texture = "http://www.roblox.com/asset/?id=810245460"
                                end
                    end
                    local LeftUpperLeg = humanoid.Parent:findFirstChild("LeftUpperLeg")
                    local LeftLowerLeg = humanoid.Parent:findFirstChild("LeftLowerLeg")
                    --
                    local RightUpperLeg = humanoid.Parent:findFirstChild("RightUpperLeg")
                    local RightLowerLeg = humanoid.Parent:findFirstChild("RightLowerLeg")
                    --
                    local RightUpperArm = humanoid.Parent:findFirstChild("RightUpperArm")
                    local RightLowerArm = humanoid.Parent:findFirstChild("RightLowerArm")
                    --
                    local LeftUpperArm = humanoid.Parent:findFirstChild("LeftUpperArm")
                    local LeftLowerArm = humanoid.Parent:findFirstChild("LeftLowerArm")
                    --Foot & Hands--
                   
                    local LeftFoot = humanoid.Parent:findFirstChild("LeftFoot")
                    local RightFoot = humanoid.Parent:findFirstChild("RightFoot")
                    --
                    local LeftHand = humanoid.Parent:findFirstChild("LeftHand")
                    local RightHand = humanoid.Parent:findFirstChild("RightHand")
                   
                    --END--
                    --TORSOS--
                   
                    local UpperTorso = humanoid.Parent:findFirstChild("UpperTorso")
                    local LowerTorso = humanoid.Parent:findFirstChild("LowerTorso")
                   
                    --END--
                    if LowerTorso then
                        if LeftUpperLeg then
                            makeballlimb(LowerTorso["LeftHipRigAttachment"], LeftUpperLeg["LeftHipRigAttachment"], 50,-50, 90)
                        end
                        if RightUpperLeg then
                            makeballlimb(LowerTorso["RightHipRigAttachment"], RightUpperLeg["RightHipRigAttachment"], 50,-50, 90)
                        end
                        if LeftLowerLeg then
                            makehingelimb(LeftUpperLeg["LeftKneeRigAttachment"], LeftLowerLeg["LeftKneeRigAttachment"], 0,-90)
                        end
                        if RightLowerLeg then
                            makehingelimb(RightUpperLeg["RightKneeRigAttachment"], RightLowerLeg["RightKneeRigAttachment"], 0,-90)
                        end
                        if LeftFoot then
                            makehingelimb(LeftLowerLeg["LeftAnkleRigAttachment"], LeftFoot["LeftAnkleRigAttachment"], 30, -30)
                        end
                        if RightFoot then
                            makehingelimb(RightLowerLeg["RightAnkleRigAttachment"], RightFoot["RightAnkleRigAttachment"], 30, -30)
                        end
                        if UpperTorso then
                            makehingelimb(UpperTorso["WaistRigAttachment"], LowerTorso["WaistRigAttachment"], 30, -30)
                        end
                    end
                    if UpperTorso then
                        local vel = Instance.new("BodyVelocity", UpperTorso)
                        vel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
                        vel.Velocity = game.Players.LocalPlayer.Character.Torso.CFrame.lookVector * 10
                        game.Debris:AddItem(vel, 0.1)
                        local hitsound = Instance.new("Sound", UpperTorso)
                        hitsound.SoundId = "http://www.roblox.com/asset/?id=148862502"
                        hitsound:Play()
                        hitsound.Volume = math.random(5,10)
                        local canhit = true
                        local hitval = 15
                        local uptor = humanoid.Parent.UpperTorso
                        if RightUpperArm then
                            makeballlimb(RightUpperArm["RightShoulderRigAttachment"], UpperTorso["RightShoulderRigAttachment"], 90,-50, 180)
                        end
                        if RightLowerArm then
                            makehingelimb(RightLowerArm["RightElbowRigAttachment"], RightUpperArm["RightElbowRigAttachment"], 0,-90)
                        end
                        if RightHand then
                            makehingelimb(RightHand["RightWristRigAttachment"], RightLowerArm["RightWristRigAttachment"], 30,30)
                        end
                        if LeftUpperArm then
                            makeballlimb(LeftUpperArm["LeftShoulderRigAttachment"], UpperTorso["LeftShoulderRigAttachment"], 90,-50, 180)
                        end
                        if LeftLowerArm then
                            makehingelimb(LeftLowerArm["LeftElbowRigAttachment"], LeftUpperArm["LeftElbowRigAttachment"], 0,-90)
                        end
                        if LeftHand then
                            makehingelimb(LeftHand["LeftWristRigAttachment"], LeftLowerArm["LeftWristRigAttachment"], 30,30)
                        end
                    end
            else
                humanoid.Parent.Archivable = true
                humanoid.PlatformStand = true
                local clone = humanoid.Parent:Clone()
                clone.Parent = workspace
                game.Debris:AddItem(clone, 60)
                for i,v in pairs(clone:GetChildren()) do
                    if v.ClassName == "Script" or v.ClassName == "LocalScript" then
                        v:Remove()
                    end
                    for i,p in pairs(v:GetChildren()) do
                    if p.ClassName == "Weld" or p.ClassName == "Motor6D" or p.ClassName == "BodyVelocity" then
                        p:Remove()
                    end
                end
                end
                for i,t in pairs(humanoid.Parent:GetChildren()) do
                    if t.ClassName == "Accessory" or t.ClassName == "ForceField" then
                        t:Remove()
                    end
                end
                local vel = Instance.new("BodyVelocity", clone.Torso)
                vel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
                vel.Velocity = game.Players.LocalPlayer.Character.Torso.CFrame.lookVector * 15
                game.Debris:AddItem(vel, 0.1)
                local hitsound = Instance.new("Sound", clone.Torso)
                hitsound.SoundId = "http://www.roblox.com/asset/?id=148862502"
                hitsound:Play()
                hitsound.Volume = math.random(5,10)
                vel = Instance.new("BodyVelocity", clone.Torso)
                vel.Velocity = clone.Torso.CFrame.lookVector * -5
                vel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
                using = false
                hit = Instance.new("Sound", clone.Torso)
                hit.SoundId = "rbxassetid://260430060"
                hit.Volume = 0
                hit1 = Instance.new("Sound", clone.Torso)
                hit1.SoundId = "rbxassetid://138087186"
                hit1.Volume = 0
                hit2 = Instance.new("Sound", clone.Torso)
                hit2.SoundId = "rbxassetid://131237241"
                hit2.Volume = 0
                hit3 = Instance.new("Sound", clone.Torso)
                hit3.SoundId = "rbxassetid://278062209"
                hit3.Volume = 0
                hit3.TimePosition = 0.33
                ded = Instance.new("Sound", clone.Torso)
                ded.SoundId = "rbxassetid://418892870"
                ded.Volume = 0
                local leftarm = clone:findFirstChild("Left Arm")
                local rightrm = clone:findFirstChild("Right Arm")
                local leftleg = clone:findFirstChild("Left Leg")
                local rightleg = clone:findFirstChild("Right Leg")
                local head = clone:findFirstChild("Head")
                for i, g in pairs(humanoid.Parent:GetChildren()) do
                    if g.ClassName == "Part" then
                        g:destroy()
                    end
                end
                for i, h in pairs(humanoid.Parent:GetChildren()) do
                    if h.ClassName == "Accesory" then
                        h:destroy()
                    end
                end
                for z,x in pairs(clone:GetChildren()) do
                        if x.ClassName == "Accessory" then
                            local handle = x:findFirstChild("Handle")
                            if handle then
                                local attachment = handle:findFirstChildOfClass("Attachment")
                                if attachment then
                                    for q,w in pairs(clone:GetChildren()) do
                                        if w.Name == "Torso" or w.Name == "Head" then
                                            local anotherone = w:findFirstChild(attachment.Name)
                                            if attachment and anotherone then
                                                local constraint = Instance.new("HingeConstraint", clone) --making fake weld
                                                constraint.Attachment0 = attachment
                                                constraint.Attachment1 = anotherone
                                                constraint.LimitsEnabled = true
                                                constraint.LowerAngle = 0
                                                constraint.UpperAngle = 0
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                if head and clone.Torso:findFirstChild("NeckAttachment") then
                            local attachment = Instance.new("Attachment", clone.Head)
                            attachment.Position = Vector3.new(0, -0.5, 0)
                            attachment.Name = "lol"
                            attachment.Visible = false
                            clone.Torso.NeckAttachment.Visible = false
                            clone.Torso.NeckAttachment.Position = clone.Torso.NeckAttachment.Position + Vector3.new(0,0,0)
                            local ball = Instance.new("BallSocketConstraint", clone)
                            ball.Attachment0 = clone.Torso.NeckAttachment
                            ball.Attachment1 = attachment
                            ball.LimitsEnabled = true
                            ball.TwistLimitsEnabled = true
                            ball.UpperAngle = 90
                            ball.Restitution = 0.5
                            ball.TwistUpperAngle = 90
                            ball.TwistLowerAngle = -90
                            local  collidepartofleftleg = Instance.new("Part", clone.Torso)
                            collidepartofleftleg.Name = "Bone"
                            collidepartofleftleg.Size = Vector3.new(0.7,0.7,0.7)
                            collidepartofleftleg.Transparency = 1
                            collidepartofleftleg:BreakJoints()
                            local weeld = Instance.new("Weld", collidepartofleftleg)
                            weeld.Part0 = collidepartofleftleg
                            weeld.Part1 = clone["Head"]
                        end
                if leftleg ~= nil then
                leftleg:BreakJoints()
                local glue = Instance.new("Glue", clone.Torso)
                glue.Part0 = clone.Torso
                glue.Part1 = leftleg
                glue.Name = "Left leg"
                local collider = Instance.new("Part", leftleg)
                collider.Position = Vector3.new(0,999,0)
                collider.Size = Vector3.new(1.5, 1, 1)
                collider.Shape = "Cylinder"
                local weld = Instance.new("Weld", collider)
                weld.Part0 = leftleg
                weld.Part1 = collider
                weld.C0 = CFrame.new(0,-0.2,0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/2)
                collider.TopSurface = "Smooth"
                collider.BottomSurface = "Smooth"
                collider.formFactor = "Symmetric"
                glue.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
                glue.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
                collider.Transparency = 1
                end
                ------------
                if rightleg ~= nil then
                rightleg:BreakJoints()
                local glue1 = Instance.new("Glue", clone.Torso)
                glue1.Part0 = clone.Torso
                glue1.Part1 = rightleg
                glue1.Name = "Right leg"
                local collider1 = Instance.new("Part", rightleg)
                collider1.Position = Vector3.new(0,999,0)
                collider1.Size = Vector3.new(1.5, 1, 1)
                collider1.Shape = "Cylinder"
                local weld1 = Instance.new("Weld", collider1)
                weld1.Part0 = rightleg
                weld1.Part1 = collider1
                weld1.C0 = CFrame.new(0,-0.2,0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/2)
                collider1.TopSurface = "Smooth"
                collider1.BottomSurface = "Smooth"
                collider1.formFactor = "Symmetric"
                glue1.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
                glue1.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
                collider1.Transparency = 1
                end
                ------------
                if rightrm ~= nil then
                rightrm:BreakJoints()
                rightrm.CFrame = clone.Torso.CFrame * CFrame.new(1.7,0,0)
                local glue11 = Instance.new("Glue", clone.Torso)
                glue11.Part0 = clone.Torso
                glue11.Part1 = rightrm
                glue11.Name = "Right shoulder"
                local collider11 = Instance.new("Part", rightrm)
                collider11.Position = Vector3.new(0,9999,0)
                collider11.Size = Vector3.new(1.5,1,1)
                collider11.Shape = "Cylinder"
                local weld11 = Instance.new("Weld", collider11)
                weld11.Part0 = rightrm
                weld11.Part1 = collider11
                weld11.C0 = CFrame.new(0,-0.2,0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/2)
                collider11.TopSurface = "Smooth"
                collider11.BottomSurface = "Smooth"
                collider11.formFactor = "Symmetric"
                glue11.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                glue11.C1 = CFrame.new(0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                collider11.Transparency = 1
                end
                ------------
                if leftarm ~= nil then
                leftarm.CFrame = clone.Torso.CFrame * CFrame.new(-1.7,0,0)
                leftarm:BreakJoints()
                local glue111 = Instance.new("Glue", clone.Torso)
                glue111.Part0 = clone.Torso
                glue111.Part1 = leftarm
                glue111.Name = "Left shoulder"
                local collider111 = Instance.new("Part", leftarm)
                collider111.Position = Vector3.new(0,9999,0)
                collider111.Size = Vector3.new(1.5,1,1)
                collider111.Shape = "Cylinder"
                local weld111 = Instance.new("Weld", collider111)
                weld111.Part0 = leftarm
                weld111.Part1 = collider111
                weld111.C0 = CFrame.new(0,-0.2,0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/2)
                collider111.TopSurface = "Smooth"
                collider111.BottomSurface = "Smooth"
                collider111.formFactor = "Symmetric"
                glue111.C0 = CFrame.new(-1.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                glue111.C1 = CFrame.new(0, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                collider111.Transparency = 1
                ----------------
                sensoring = Instance.new("Part", clone.Torso)
                sensoring.Size = Vector3.new(1.2,1.1,0.8)
                sensoring.CanCollide = false
                sensoring.Position = clone.Torso.Position
                local welder = Instance.new("Weld", sensoring)
                welder.Part0 = clone.Torso
                welder.Part1 = sensoring
                welder.C0 = welder.C0 * CFrame.new(0,0,1.05)
                sensoring.Transparency = 1
                -----------------
                sensoring1 = Instance.new("Part", clone.Torso)
                sensoring1.Size = Vector3.new(1.2,1.1,0.8)
                sensoring1.CanCollide = false
                sensoring1.Position = clone.Torso.Position
                local welder1 = Instance.new("Weld", sensoring)
                welder1.Part0 = clone.Torso
                welder1.Part1 = sensoring1
                welder1.C0 = welder1.C0 * CFrame.new(0,0,-1.05)
                sensoring1.Transparency = 1
                end
                clone.Name = humanoid.Parent.Name.." (PANNED)"
                ded:Play()
                vel:destroy()
                wait(0.5)
                local function touch()
                    if not using then
                        using = true
                        local Math = math.random(1,4)
                        if Math == 1 then
                            hit:Play()
                        end
                        if Math == 2 then
                            hit1:Play()
                        end
                        if Math == 3 then
                            hit2:Play()
                        end
                        if Math == 4 then
                            hit3:Play()
                        end
                        wait(0.1)
                        using = false
                    end
                end
                sensoring.Touched:connect(touch)
                sensoring1.Touched:connect(touch)
                while true do
                    if clone:findFirstChild("Head") then
                        clone.Head.CanCollide = false
                    end
                    game:GetService("RunService").Stepped:wait()
                end
            end
        end
    end
end
Part0.Touched:connect(hittie)
function ragdoll()
game.Players.LocalPlayer.Character.Archivable = true
clone = game.Players.LocalPlayer.Character:Clone()
clone.Parent = workspace
for i,v in pairs(clone:GetChildren()) do
    if v.ClassName == "Script" or v.ClassName == "LocalScript" then
        v:Remove()
    end
    for i,p in pairs(v:GetChildren()) do
    if p.ClassName == "Weld" or p.ClassName == "Motor6D" or p.ClassName == "BodyVelocity" then
        p:Remove()
    end
end
end
for i,t in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if t.ClassName == "Accessory" or t.ClassName == "ForceField" then
        t:Remove()
    end
end
vel = Instance.new("BodyVelocity", clone.Torso)
vel.Velocity = clone.Torso.CFrame.lookVector * -5
vel.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
clone.Head.face.Texture = "http://www.roblox.com/asset/?id=161061608"
using = false
hit = Instance.new("Sound", clone.Torso)
hit.SoundId = "rbxassetid://260430060"
hit.Volume = 0
hit1 = Instance.new("Sound", clone.Torso)
hit1.SoundId = "rbxassetid://138087186"
hit1.Volume = 0
hit2 = Instance.new("Sound", clone.Torso)
hit2.SoundId = "rbxassetid://131237241"
hit2.Volume = 0
hit3 = Instance.new("Sound", clone.Torso)
hit3.SoundId = "rbxassetid://278062209"
hit3.Volume = 0
hit3.TimePosition = 0.33
ded = Instance.new("Sound", clone.Torso)
ded.SoundId = "rbxassetid://337800380"
ded.Volume = 5
local leftarm = clone:findFirstChild("Left Arm")
local rightrm = clone:findFirstChild("Right Arm")
local leftleg = clone:findFirstChild("Left Leg")
local rightleg = clone:findFirstChild("Right Leg")
local head = clone:findFirstChild("Head")
for i, g in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if g.ClassName == "Part" then
        g:destroy()
    end
end
for i, h in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if h.ClassName == "Accesory" then
        h:destroy()
    end
end
game.Workspace.CurrentCamera.CameraSubject = head
if head then
            local attachment = Instance.new("Attachment", clone.Head)
            attachment.Position = Vector3.new(0, -0.5, 0)
            attachment.Name = "lol"
            attachment.Visible = false
            clone.Torso.NeckAttachment.Visible = false
            clone.Torso.NeckAttachment.Position = clone.Torso.NeckAttachment.Position + Vector3.new(0,0,0)
            local ball = Instance.new("BallSocketConstraint", clone)
            ball.Attachment0 = clone.Torso.NeckAttachment
            ball.Attachment1 = attachment
            ball.LimitsEnabled = true
            ball.TwistLimitsEnabled = true
            ball.UpperAngle = 90
            ball.Restitution = 0.5
            ball.TwistUpperAngle = 90
            ball.TwistLowerAngle = -90
            local  collidepartofleftleg = Instance.new("Part", clone.Torso)
            collidepartofleftleg.Name = "Bone"
            collidepartofleftleg.Size = Vector3.new(0.7,0.7,0.7)
            collidepartofleftleg.Transparency = 1
            collidepartofleftleg:BreakJoints()
            local weeld = Instance.new("Weld", collidepartofleftleg)
            weeld.Part0 = collidepartofleftleg
            weeld.Part1 = clone["Head"]
        end
if leftleg ~= nil then
local glue = Instance.new("Glue", clone.Torso)
glue.Part0 = clone.Torso
glue.Part1 = leftleg
glue.Name = "Left leg"
local collider = Instance.new("Part", leftleg)
collider.Position = Vector3.new(0,999,0)
collider.Size = Vector3.new(1.5, 1, 1)
collider.Shape = "Cylinder"
local weld = Instance.new("Weld", collider)
weld.Part0 = leftleg
weld.Part1 = collider
weld.C0 = CFrame.new(0,-0.2,0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/2)
collider.TopSurface = "Smooth"
collider.BottomSurface = "Smooth"
collider.formFactor = "Symmetric"
glue.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
glue.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
collider.Transparency = 1
end
------------
if rightleg ~= nil then
local glue1 = Instance.new("Glue", clone.Torso)
glue1.Part0 = clone.Torso
glue1.Part1 = rightleg
glue1.Name = "Right leg"
local collider1 = Instance.new("Part", rightleg)
collider1.Position = Vector3.new(0,999,0)
collider1.Size = Vector3.new(1.5, 1, 1)
collider1.Shape = "Cylinder"
local weld1 = Instance.new("Weld", collider1)
weld1.Part0 = rightleg
weld1.Part1 = collider1
weld1.C0 = CFrame.new(0,-0.2,0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/2)
collider1.TopSurface = "Smooth"
collider1.BottomSurface = "Smooth"
collider1.formFactor = "Symmetric"
glue1.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
glue1.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
collider1.Transparency = 1
end
------------
if rightrm ~= nil then
local glue11 = Instance.new("Glue", clone.Torso)
glue11.Part0 = clone.Torso
glue11.Part1 = rightrm
glue11.Name = "Right shoulder"
local collider11 = Instance.new("Part", rightrm)
collider11.Position = Vector3.new(0,9999,0)
collider11.Size = Vector3.new(1.5,1,1)
collider11.Shape = "Cylinder"
local weld11 = Instance.new("Weld", collider11)
weld11.Part0 = rightrm
weld11.Part1 = collider11
weld11.C0 = CFrame.new(0,-0.2,0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/2)
collider11.TopSurface = "Smooth"
collider11.BottomSurface = "Smooth"
collider11.formFactor = "Symmetric"
glue11.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
glue11.C1 = CFrame.new(0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
collider11.Transparency = 1
end
------------
if leftarm ~= nil then
local glue111 = Instance.new("Glue", clone.Torso)
glue111.Part0 = clone.Torso
glue111.Part1 = leftarm
glue111.Name = "Left shoulder"
local collider111 = Instance.new("Part", leftarm)
collider111.Position = Vector3.new(0,9999,0)
collider111.Size = Vector3.new(1.5,1,1)
collider111.Shape = "Cylinder"
local weld111 = Instance.new("Weld", collider111)
weld111.Part0 = leftarm
weld111.Part1 = collider111
weld111.C0 = CFrame.new(0,-0.2,0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/2)
collider111.TopSurface = "Smooth"
collider111.BottomSurface = "Smooth"
collider111.formFactor = "Symmetric"
glue111.C0 = CFrame.new(-1.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
glue111.C1 = CFrame.new(0, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
collider111.Transparency = 1
----------------
sensoring = Instance.new("Part", clone.Torso)
sensoring.Size = Vector3.new(1.2,1.1,0.8)
sensoring.CanCollide = false
sensoring.Position = clone.Torso.Position
local welder = Instance.new("Weld", sensoring)
welder.Part0 = clone.Torso
welder.Part1 = sensoring
welder.C0 = welder.C0 * CFrame.new(0,0,1.05)
sensoring.Transparency = 1
-----------------
sensoring1 = Instance.new("Part", clone.Torso)
sensoring1.Size = Vector3.new(1.2,1.1,0.8)
sensoring1.CanCollide = false
sensoring1.Position = clone.Torso.Position
local welder1 = Instance.new("Weld", sensoring)
welder1.Part0 = clone.Torso
welder1.Part1 = sensoring1
welder1.C0 = welder1.C0 * CFrame.new(0,0,-1.05)
sensoring1.Transparency = 1
end
clone.Name = game.Players.LocalPlayer.Character.Name.." (DEAD)"
ded:Play()
vel:destroy()
wait(0.2)
game.Debris:AddItem(clone,60)
local function touch()
    if not using then
        using = true
        local Math = math.random(1,4)
        if Math == 1 then
            hit:Play()
        end
        if Math == 2 then
            hit1:Play()
        end
        if Math == 3 then
            hit2:Play()
        end
        if Math == 4 then
            hit3:Play()
        end
        wait(0.1)
        using = false
    end
end
sensoring.Touched:connect(touch)
sensoring1.Touched:connect(touch)
while true do
    clone.Head.CanCollide = false
    game:GetService("RunService").Stepped:wait()
end
end
 
game.Players.LocalPlayer.Character.Humanoid.Died:connect(ragdoll)
 
--di ent
while true do
    if cananimate then
        if game.Players.LocalPlayer.Character.Torso.Velocity.x < -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.x > 0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z < -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z > 0.5 and cananimate then
            for i = 0.1,0.3 , 0.008 do
                if cananimate and game.Players.LocalPlayer.Character.Torso.Velocity.x < -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.x > 0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z < -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z > 0.5 and cananimate then
                    lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.53402293, 0.0594797134, 0.144087285, 0.997264206, 0.0707819909, 0.0213012099, -0.0739177391, 0.9549582, 0.287386209, 2.98023224e-08, -0.28817457, 0.957577825),i)
                    rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.54035091, 0.0769848824, -0.170524538, 0.99592495, -0.0847774297, 0.0307573378, 0.090184398, 0.936214805, -0.339659303, 0, 0.341049016, 0.940045416),i)
                    game:GetService("RunService").Stepped:wait()
                end
            end
            for i = 0.1,0.3 , 0.008 do
                if cananimate and game.Players.LocalPlayer.Character.Torso.Velocity.x < -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.x > 0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z < -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z > 0.5 and cananimate then
                    lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.53173375, 0.0903658867, -0.222393572, 0.997264206, 0.0662034005, -0.0328776538, -0.0739177391, 0.893185973, -0.443570435, 2.98023224e-08, 0.444787204, 0.895636141),i)
                    rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.54079688, 0.0720610619, 0.156226337, 0.99592495, -0.085669145, -0.0281783342, 0.090184398, 0.946062148, 0.311179608, 0, -0.312452823, 0.949932992),i)
                    game:GetService("RunService").Stepped:wait()
                end
            end
        elseif game.Players.LocalPlayer.Character.Torso.Velocity.x > -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.x < 0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z > -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z < 0.5 then
            for i = 0,1 , 0.1 do
                if cananimate and game.Players.LocalPlayer.Character.Torso.Velocity.x > -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.x < 0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z > -0.5 or game.Players.LocalPlayer.Character.Torso.Velocity.z < 0.5 and cananimate then
                    weld.C0 = weld.C0:lerp(CFrame.new(0.0769970417, -1.17027426, -1.17937994, 0, 0, 1, -0.999999881, 0, 0, 0, -1, 0),i)
                    headweld.C0 = headweld.C0:lerp(CFrame.new(0, 1.5, 0, 0.962374032, 0, 0.271727562, 0, 1, 0, -0.271727562, 0, 0.962374032),i)
                    humanoidrootpart.C0 = humanoidrootpart.C0:lerp(CFrame.new(0, 0, 0, 0.955355227, 0, -0.295459419, 0, 1, 0, 0.295459419, 0, 0.955355227),i)
                    lhandweld.C0 = lhandweld.C0:lerp(CFrame.new(-1.53559077, 0.0383267403, 0, 0.997264206, 0.0739177391, 0, -0.0739177391, 0.997264266, 0, 2.98023224e-08, 1.86264515e-09, 0.999999881),i)
                    rhandweld.C0 = rhandweld.C0:lerp(CFrame.new(1.54305458, 0.047129631, 2.98023224e-08, 0.99592495, -0.0901843905, 0, 0.090184398, 0.995925009, 0, 0, 0, 0.999999881),i)
                    game:GetService("RunService").RenderStepped:wait()
                end
            end
        end
    end
    wait()
end
