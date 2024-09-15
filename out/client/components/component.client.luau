-- Compiled with roblox-ts v3.0.0-dev-834585a
local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"))
local Reflect = TS.import(script, game:GetService("ReplicatedStorage"), "rbxts_include", "node_modules", "@flamework", "core", "out").Reflect
local _components = TS.import(script, game:GetService("ReplicatedStorage"), "rbxts_include", "node_modules", "@flamework", "components", "out")
local BaseComponent = _components.BaseComponent
local Component = _components.Component
local ClientComponent
do
	local super = BaseComponent
	ClientComponent = setmetatable({}, {
		__tostring = function()
			return "ClientComponent"
		end,
		__index = super,
	})
	ClientComponent.__index = ClientComponent
	function ClientComponent.new(...)
		local self = setmetatable({}, ClientComponent)
		return self:constructor(...) or self
	end
	function ClientComponent:constructor(...)
		super.constructor(self, ...)
	end
	function ClientComponent:onStart()
		print("my placeholder client component!")
	end
	do
		-- (Flamework) ClientComponent metadata
		Reflect.defineMetadata(ClientComponent, "identifier", "client/components/component.client@ClientComponent")
		Reflect.defineMetadata(ClientComponent, "flamework:implements", { "$:flamework@OnStart" })
	end
end
-- (Flamework) ClientComponent decorators
Reflect.decorate(ClientComponent, "$c:components@Component", Component, { {
	tag = "ClientComponent",
	attributes = {},
} })
return {
	ClientComponent = ClientComponent,
}
