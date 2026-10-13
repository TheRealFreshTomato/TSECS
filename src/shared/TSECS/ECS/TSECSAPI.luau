--!strict

local World = {}
World.__index = World

--[[World Creation]]

function World.new()
	local self = setmetatable({}, World)

	self.entities = {}
	self.generations = {}
	self.nextEntityId = 1
	self.existing = {}
	self.freeEntityIDs = {}
	print("World created")
	return self
end

function World:destroy()
	-- Cleanup logic for the world can be added here
	self.entities = nil
	self.generations = nil
	self.nextEntityId = nil
	self.existing = nil
	self.freeEntityIDs = nil
end

--[[Entity Management]]

function World:createEntity(EntityDescription: {})
	local entities = self.entities
	for i, v in #entities do
		print(i, v)
	end

	self.nextEntityId = #entities + 1
	entities[self.nextEntityId] = { EntityDescription = EntityDescription }

	for i, v in pairs(EntityDescription) do
		print(i, v)
	end
	--Create entity Id
end

return World
