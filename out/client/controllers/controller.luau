-- Compiled with roblox-ts v3.0.0-dev-834585a
local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"))
local Reflect = TS.import(script, game:GetService("ReplicatedStorage"), "rbxts_include", "node_modules", "@flamework", "core", "out").Reflect
local Controller = TS.import(script, game:GetService("ReplicatedStorage"), "rbxts_include", "node_modules", "@flamework", "core", "out").Controller
local MyController
do
	MyController = setmetatable({}, {
		__tostring = function()
			return "MyController"
		end,
	})
	MyController.__index = MyController
	function MyController.new(...)
		local self = setmetatable({}, MyController)
		return self:constructor(...) or self
	end
	function MyController:constructor()
	end
	function MyController:onStart()
		print("My placeholder controller!")
	end
	do
		-- (Flamework) MyController metadata
		Reflect.defineMetadata(MyController, "identifier", "client/controllers/controller@MyController")
		Reflect.defineMetadata(MyController, "flamework:implements", { "$:flamework@OnStart" })
	end
end
-- (Flamework) MyController decorators
Reflect.decorate(MyController, "$:flamework@Controller", Controller, {})
return {
	MyController = MyController,
}
