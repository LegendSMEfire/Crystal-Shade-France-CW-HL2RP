--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local CLASS = Clockwork.class:New("Sentinelle de l'Union");
	CLASS.color = Color(107,142,35, 255);
	CLASS.factions = {FACTION_SENTINELLE};
	CLASS.isDefault = true;
	CLASS.wagesName = "Tokens";
	CLASS.wages	= 0;
	CLASS.description = "Un Garde Sentinelle de l'Union";
	CLASS.defaultPhysDesc = "Un Garde Sentinelle de l'Union";
CLASS_SENTINELLE = CLASS:Register();