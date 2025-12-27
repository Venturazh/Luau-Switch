local ReplicatedStorage = game:GetService("ReplicatedStorage")
local switch = require(ReplicatedStorage.switch)

local player = game.Players.LocalPlayer

local Showcase = switch:switch({name = player.Name}, {
    case = {value = "Yuqorii", func = function()
        print("Found:", player.Name)
    end},
    
    case2 = {value = "Rymxi", func = function()
        print("Found Rymxi")    
    end},
})
