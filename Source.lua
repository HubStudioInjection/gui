
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local speed = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local Minus = Instance.new("TextButton")
local Fly = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0821917802, 0, 0.472361803, 0)
Frame.Size = UDim2.new(0, 183, 0, 100)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.333333343, 0, -0.100000001, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "  Fly Gui V2"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 9.000

UICorner.Parent = Frame

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
speed.BorderColor3 = Color3.fromRGB(255, 255, 255)
speed.Position = UDim2.new(0.726775944, 0, 0.639999986, 0)
speed.Size = UDim2.new(0, 25, 0, 25)
speed.Font = Enum.Font.Unknown
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(255, 255, 255)
speed.TextSize = 9.000

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
plus.BorderColor3 = Color3.fromRGB(255, 255, 255)
plus.Position = UDim2.new(0.142076507, 0, 0.639999986, 0)
plus.Size = UDim2.new(0, 25, 0, 25)
plus.Font = Enum.Font.Unknown
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(255, 255, 255)
plus.TextSize = 9.000

Minus.Name = "Minus"
Minus.Parent = Frame
Minus.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Minus.BorderColor3 = Color3.fromRGB(255, 255, 255)
Minus.Position = UDim2.new(0.366120219, 0, 0.639999986, 0)
Minus.Size = UDim2.new(0, 25, 0, 25)
Minus.Font = Enum.Font.Unknown
Minus.Text = "-"
Minus.TextColor3 = Color3.fromRGB(255, 255, 255)
Minus.TextSize = 9.000

Fly.Name = "Fly"
Fly.Parent = Frame
Fly.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Fly.BorderColor3 = Color3.fromRGB(255, 255, 255)
Fly.Position = UDim2.new(0.0874316916, 0, 0.330000013, 0)
Fly.Size = UDim2.new(0, 150, 0, 20)
Fly.Font = Enum.Font.Unknown
Fly.Text = "Fly"
Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
Fly.TextSize = 9.000

-- Scripts:

local function HEGN_fake_script() -- plus.LocalScript 
  local script = Instance.new('LocalScript', plus)

  game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
    wait(0.7)
    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
    game.Players.LocalPlayer.Character.Animate.Disabled = false
  
  end)
  script.Parent.MouseButton1Click:Connect(function()
    speeds = speeds + 1
    speed.Text = speeds
    if nowe == true then
  
  
      tpwalking = false
      for i = 1, speeds do
        spawn(function()
  
          local hb = game:GetService("RunService").Heartbeat  
  
  
          tpwalking = true
          local chr = game.Players.LocalPlayer.Character
          local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
          while tpwalking and hb:Wait() and chr and hum and hum.Parent do
            if hum.MoveDirection.Magnitude > 0 then
              chr:TranslateBy(hum.MoveDirection)
            end
          end
  
        end)
      end
    end
  end)
end
coroutine.wrap(HEGN_fake_script)()
local function YYFQPRF_fake_script() -- Minus.LocalScript 
  local script = Instance.new('LocalScript', Minus)

game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
    wait(0.7)
    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
    game.Players.LocalPlayer.Character.Animate.Disabled = false
  
  end)
  script.Parent.MouseButton1Click:Connect(function()
    if speeds == 1 then
      speed.Text = "?"
      wait(1)
      speed.Text = speeds
    else
      speeds = speeds - 1
      speed.Text = speeds
      if nowe == true then
        tpwalking = false
        for i = 1, speeds do
          spawn(function()
  
            local hb = game:GetService("RunService").Heartbeat  
  
  
            tpwalking = true
            local chr = game.Players.LocalPlayer.Character
            local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
            while tpwalking and hb:Wait() and chr and hum and hum.Parent do
              if hum.MoveDirection.Magnitude > 0 then
                chr:TranslateBy(hum.MoveDirection)
              end
            end
  
          end)
        end
      end
    end
  end)
  
end
coroutine.wrap(YYFQPRF_fake_script)()
local function CMUD_fake_script() -- Fly.LocalScript 
  local script = Instance.new('LocalScript', Fly)

  speeds = 1
  
  local speaker = game:GetService("Players").LocalPlayer
  
  local chr = game.Players.LocalPlayer.Character
  local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
  
  nowe = false
  
  script.Parent.MouseButton1Click:Connect(function()
    if nowe == true then
      nowe = false
  
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
      speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
    else 
      nowe = true
  
      for i = 1, speeds do
        spawn(function()
  
          local hb = game:GetService("RunService").Heartbeat 
  
  
          tpwalking = true
          local chr = game.Players.LocalPlayer.Character
          local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
          while tpwalking and hb:Wait() and chr and hum and hum.Parent do
            if hum.MoveDirection.Magnitude > 0 then
              chr:TranslateBy(hum.MoveDirection)
            end
          end
  
        end)
      end
      game.Players.LocalPlayer.Character.Animate.Disabled = true
      local Char = game.Players.LocalPlayer.Character
      local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
  
      for i,v in next, Hum:GetPlayingAnimationTracks() do
        v:AdjustSpeed(0)
      end
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)

speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
      speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
      speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
    end
  
    if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
      local plr = game.Players.LocalPlayer
      local torso = plr.Character.Torso
      local flying = true
      local deb = true
      local ctrl = {f = 0, b = 0, l = 0, r = 0}
      local lastctrl = {f = 0, b = 0, l = 0, r = 0}
      local maxspeed = 50
      local speed = 0
      local bg = Instance.new("BodyGyro", torso)
      bg.P = 9e4
      bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
      bg.cframe = torso.CFrame
      local bv = Instance.new("BodyVelocity", torso)
      bv.velocity = Vector3.new(0,0.1,0)
      bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
      if nowe == true then
        plr.Character.Humanoid.PlatformStand = true
      end
      while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
        game:GetService("RunService").RenderStepped:Wait()
  
        if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
          speed = speed+.5+(speed/maxspeed)
          if speed > maxspeed then
            speed = maxspeed
          end
        elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
          speed = speed-1
          if speed < 0 then
            speed = 0
          end
        end
        if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
          bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
          lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
        elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
          bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
        else
          bv.velocity = Vector3.new(0,0,0)
        end
        -- game.Players.LocalPlayer.Character.Animate.Disabled = true
        bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
      end
      ctrl = {f = 0, b = 0, l = 0, r = 0}
      lastctrl = {f = 0, b = 0, l = 0, r = 0}
      speed = 0
      bg:Destroy()
      bv:Destroy()
      plr.Character.Humanoid.PlatformStand = false
      game.Players.LocalPlayer.Character.Animate.Disabled = false
      tpwalking = false
    else
      local plr = game.Players.LocalPlayer
      local UpperTorso = plr.Character.UpperTorso
      local flying = true
      local deb = true
      local ctrl = {f = 0, b = 0, l = 0, r = 0}
      local lastctrl = {f = 0, b = 0, l = 0, r = 0}
      local maxspeed = 50

local speed = 0
  
  
      local bg = Instance.new("BodyGyro", UpperTorso)
      bg.P = 9e4
      bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
      bg.cframe = UpperTorso.CFrame
      local bv = Instance.new("BodyVelocity", UpperTorso)
      bv.velocity = Vector3.new(0,0.1,0)
      bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
      if nowe == true then
        plr.Character.Humanoid.PlatformStand = true
      end
      while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
        wait()
  
        if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
          speed = speed+.5+(speed/maxspeed)
          if speed > maxspeed then
            speed = maxspeed
          end
        elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
          speed = speed-1
          if speed < 0 then
            speed = 0
          end
        end
        if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
          bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
          lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
        elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
          bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
  
          
        else
          bv.velocity = Vector3.new(0,0,0)
        end
  
        bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
      end
      ctrl = {f = 0, b = 0, l = 0, r = 0}
      lastctrl = {f = 0, b = 0, l = 0, r = 0}
      speed = 0
      bg:Destroy()
      bv:Destroy()
      plr.Character.Humanoid.PlatformStand = false
      game.Players.LocalPlayer.Character.Animate.Disabled = false
      tpwalking = false
    end
  end)
end
coroutine.wrap(CMUD_fake_script)()
local function EVVI_fake_script() -- ScreenGui.LocalScript 
  local script = Instance.new('LocalScript', ScreenGui)

  frame = script.Parent.Frame
  frame.Selectable = true
  frame.Draggable = true
  frame.Active = true
end
coroutine.wrap(EVVI_fake_script)()
