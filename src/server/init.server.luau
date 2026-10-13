local ReplicatedStorage = game:GetService("ReplicatedStorage")

local TSECS = ReplicatedStorage.Shared.TSECS
local TSECSAPI = require(TSECS.ECS.TSECSAPI)

local World1 = TSECSAPI.new()
local World2 = TSECSAPI.new()

World1:createEntity({
	Name = "Player",
	Position = Vector3.new(0, 0, 0),
})

World2:createEntity({
	Name = "Enemy",
	Position = Vector3.new(10, 10, 10),
})

World2:destroy()

World2:createEntity({
	Name = "Shouldntwork",
	Position = Vector3.new(0, 1, 1),
})
