local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

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
local localPlayer = Players.LocalPlayer
local placeId = game.PlaceId

if device == "PC" then
    localPlayer:Kick("Wait for release in 30/06/2025")
elseif device == "Mobile" then
    if placeId == 13664698400 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iLunar-Scripts/Lunar/refs/heads/main/Versions/TheClassicSoccer.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iLunar-Scripts/Lunar/refs/heads/main/Versions/LastMobileTPS.lua"))()
    end
else
    localPlayer:Kick("Unknown Device")
end
