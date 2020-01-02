--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local CLASS = Clockwork.class:New("Comité de Prospérité Civile");
	CLASS.color = Color(0, 191, 255, 255);
	CLASS.factions = {FACTION_CPC};
	CLASS.wages = 0;
	CLASS.isDefault = true;
	CLASS.wagesName = "Tokens";
	CLASS.description = "Un membre du Comité de Prospérité Civile.";
	CLASS.defaultPhysDesc = "Un membre du Comité de Prospérité Civile.";
CLASS_CPC = CLASS:Register();