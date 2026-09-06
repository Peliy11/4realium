local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

-- Run key system first
local keySuccess, keyErr = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Peliy11/4realium/refs/heads/main/key.lua"))()
end)

if not keySuccess then
    warn("Key system failed to load: " .. tostring(keyErr))
    Players.LocalPlayer:Kick("4realium | Key system failed to load")
    return
end

-- Wait for key validation
task.wait(1)

-- Check if key was validated
if not getgenv().KeyValid then
    Players.LocalPlayer:Kick("4realium | Invalid key")
    return
end

-- Game ID based loader
local gameId = game.PlaceId
local scripts = {
    [155615604] = "https://raw.githubusercontent.com/Peliy11/4realium/refs/heads/main/155615604.lua",
}

local scriptUrl = scripts[gameId]

if not scriptUrl then
    Players.LocalPlayer:Kick("4realium | Unsupported game: " .. tostring(gameId))
    return
end

local scriptSuccess, scriptErr = pcall(function()
    loadstring(game:HttpGet(scriptUrl))()
end)

if not scriptSuccess then
    warn("Script failed to load: " .. tostring(scriptErr))
    Players.LocalPlayer:Kick("4realium | Script failed to load")
end
