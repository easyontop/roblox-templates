--[[
⚠️: LocalScript
❌: Script / ModuleScript
]]
-- Compiled with roblox-ts v2.1.1
local Players = game:GetService"Players"
local TweenService = game:GetService"TweenService"
local UserInputService = game:GetService"UserInputService"
local Workspace = game:GetService"Workspace"
local plr = Players.LocalPlayer
local scr = plr:FindFirstChild("PlayerScripts")
local x = scr:WaitForChild("PlayerModule")
local y = x:WaitForChild("CameraModule")
local z = y:WaitForChild("MouseLockController")
local z1 = z:WaitForChild("BoundKeys")
wait()
z1.Value = "LeftControl,RightControl"
UserInputService.InputBegan:Connect(function(input, isGameHandle)
	if isGameHandle then
		return nil
	end
	if input.KeyCode == Enum.KeyCode.LeftShift then
		local _result = Players.LocalPlayer.Character
		if _result ~= nil then
			_result = _result:FindFirstChild("Humanoid")
		end
		if not _result then
			return nil
		end
		((Players.LocalPlayer.Character):FindFirstChildWhichIsA("Humanoid")).WalkSpeed = 23 -- Change your walk speed (sprinted)
		TweenService:Create(Workspace.CurrentCamera, TweenInfo.new(0.1), {
			FieldOfView = (Workspace.CurrentCamera).FieldOfView + 10,
		}):Play()
	end
end)
UserInputService.InputEnded:Connect(function(input, isGameHandle)
	if isGameHandle then
		return nil
	end
	if input.KeyCode == Enum.KeyCode.LeftShift then
		local _result = Players.LocalPlayer.Character
		if _result ~= nil then
			_result = _result:FindFirstChild("Humanoid")
		end
		if not _result then
			return nil
		end
		((Players.LocalPlayer.Character):FindFirstChildWhichIsA("Humanoid")).WalkSpeed = 20 -- Change your walk speed (default)
		TweenService:Create(Workspace.CurrentCamera, TweenInfo.new(0.1), {
			FieldOfView = (Workspace.CurrentCamera).FieldOfView - 10,
		}):Play()
	end
end)
