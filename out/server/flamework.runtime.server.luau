-- Compiled with roblox-ts v3.0.0-dev-834585a
local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"))
local Flamework = TS.import(script, game:GetService("ReplicatedStorage"), "rbxts_include", "node_modules", "@flamework", "core", "out").Flamework
Flamework._addPaths({ { "ServerScriptService", "TS", "components" } })
Flamework._addPaths({ { "ServerScriptService", "TS", "services" } })
Flamework.ignite()
