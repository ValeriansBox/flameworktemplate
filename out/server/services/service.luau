-- Compiled with roblox-ts v3.0.0-dev-834585a
local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"))
local Reflect = TS.import(script, game:GetService("ReplicatedStorage"), "rbxts_include", "node_modules", "@flamework", "core", "out").Reflect
local Service = TS.import(script, game:GetService("ReplicatedStorage"), "rbxts_include", "node_modules", "@flamework", "core", "out").Service
local MyService
do
	MyService = setmetatable({}, {
		__tostring = function()
			return "MyService"
		end,
	})
	MyService.__index = MyService
	function MyService.new(...)
		local self = setmetatable({}, MyService)
		return self:constructor(...) or self
	end
	function MyService:constructor()
	end
	function MyService:onStart()
		print("My placeholder service!")
	end
	do
		-- (Flamework) MyService metadata
		Reflect.defineMetadata(MyService, "identifier", "server/services/service@MyService")
		Reflect.defineMetadata(MyService, "flamework:implements", { "$:flamework@OnStart" })
	end
end
-- (Flamework) MyService decorators
Reflect.decorate(MyService, "$:flamework@Service", Service, {})
return {
	MyService = MyService,
}
