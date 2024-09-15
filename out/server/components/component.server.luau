-- Compiled with roblox-ts v3.0.0-dev-834585a
local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"))
local Reflect = TS.import(script, game:GetService("ReplicatedStorage"), "rbxts_include", "node_modules", "@flamework", "core", "out").Reflect
local _components = TS.import(script, game:GetService("ReplicatedStorage"), "rbxts_include", "node_modules", "@flamework", "components", "out")
local BaseComponent = _components.BaseComponent
local Component = _components.Component
local ServerComponent
do
	local super = BaseComponent
	ServerComponent = setmetatable({}, {
		__tostring = function()
			return "ServerComponent"
		end,
		__index = super,
	})
	ServerComponent.__index = ServerComponent
	function ServerComponent.new(...)
		local self = setmetatable({}, ServerComponent)
		return self:constructor(...) or self
	end
	function ServerComponent:constructor(...)
		super.constructor(self, ...)
	end
	function ServerComponent:onStart()
		print("my placeholder server component!")
	end
	do
		-- (Flamework) ServerComponent metadata
		Reflect.defineMetadata(ServerComponent, "identifier", "server/components/component.server@ServerComponent")
		Reflect.defineMetadata(ServerComponent, "flamework:implements", { "$:flamework@OnStart" })
	end
end
-- (Flamework) ServerComponent decorators
Reflect.decorate(ServerComponent, "$c:components@Component", Component, { {
	tag = "ServerComponent",
	attributes = {},
} })
return {
	ServerComponent = ServerComponent,
}
