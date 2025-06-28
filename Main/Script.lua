local UserInputService = game:GetService("UserInputService")

local function DetectDevice()
    if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
        return "Mobile"
    elseif UserInputService.KeyboardEnabled and not UserInputService.TouchEnabled then
        return "PC"
    else
        return "Unknown"
    end
end

local device = DetectDevice()

if device == "PC" then
    game.Players.LocalPlayer:Kick("Wait for release in 30/06/2025")
elseif device == "Mobile" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/iLunar-Scripts/Lunar/refs/heads/main/Versions/LastMobileTPS.lua"))()
else
    game.Players.LocalPlayer:Kick("Unknown Device")
end
