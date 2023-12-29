local osclock = os.clock()
repeat task.wait() until game:IsLoaded()
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local RS = game:GetService("ReplicatedStorage")

 local Blunder = require(RS:FindFirstChild("BlunderList", true))
    local OldGet = Blunder.getAndClear

    setreadonly(Blunder, false)
    Blunder.getAndClear = function(...)
        local Packet = ...
        for i,v in next, Packet.list do
            if v.message ~= "PING" then
                table.remove(Packet.list, i)
            end
        end
        return OldGet(Packet)
    end

    local Audio = require(RS:WaitForChild("Library", 10):WaitForChild("Audio", 10))
    hookfunction(Audio.Play, function(...)
        return {
            Play = function() end,
            Stop = function() end,
            IsPlaying = function() return false end
        }
    end)
setfpscap(10)
game:GetService("RunService"):Set3dRenderingEnabled(false)
local Players = game:GetService('Players')
local getPlayers = Players:GetPlayers()
local PlayerInServer = #getPlayers
local http = game:GetService("HttpService")
local ts = game:GetService("TeleportService")
local rs = game:GetService("ReplicatedStorage")
local playerID

if game.PlaceId == 15502339080 then
task.wait(5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/rbxhop/haa/main/haa.lua"))()
task.wait(460)

local function jumpToServer() 
    local sfUrl = "https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=%s&limit=%s&excludeFullGames=true" 
    local req = request({ Url = string.format(sfUrl, 15502339080, "Desc", 100) }) 
    local body = http:JSONDecode(req.Body) 
    local deep = math.random(1, 3)
    if deep > 1 then 
        for i = 1, deep, 1 do 
             req = request({ Url = string.format(sfUrl .. "&cursor=" .. body.nextPageCursor, 15502339080, "Desc", 100) }) 
             body = http:JSONDecode(req.Body) 
             task.wait(0.1)
        end 
end
end
    local servers = {} 
    if body and body.data then 
        for i, v in next, body.data do 
            if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= game.JobId then
                table.insert(servers, v.id)
            end
        end
    end
    local randomCount = #servers
    if not randomCount then
       randomCount = 2
    end
    ts:TeleportToPlaceInstance(15502339080, servers[math.random(1, randomCount)], game:GetService("Players").LocalPlayer) 
end


game:GetService("RunService").Stepped:Connect(function()
    PlayerInServer = #getPlayers
    if PlayerInServer < 30 or math.floor(os.clock() - osclock) >= math.random(900, 1200) then
        jumpToServer()
    end
end)
else
task.wait(10)
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Travel to Trading Plaza"):InvokeServer(15502339080)
end
