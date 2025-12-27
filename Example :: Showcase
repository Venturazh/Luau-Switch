local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Helpers = require(ReplicatedStorage.Modules.Handlers.Helpers)

local player = game.Players.LocalPlayer

local switch = Helpers:switch({name = player.Name}, {
    case = {value = "Yuqorii", func = function()
        print("Found:", player.Name)
    end},
    
    case2 = {value = "Rymxi", func = function()
        print("Found Rymxi")    
    end},
})
