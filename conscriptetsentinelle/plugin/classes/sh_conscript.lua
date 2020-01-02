--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local CLASS = Clockwork.class:New("Conscript");
	CLASS.color = Color(150, 125, 100, 255);
	CLASS.factions = {FACTION_CONSCRIPT};
	CLASS.isDefault = true;
	CLASS.wagesName = "Tokens";
	CLASS.wages	= 0;
	CLASS.description = "Un Soldat Conscript.";
	CLASS.defaultPhysDesc = "Un Soldat Conscript.";
CLASS_CONSCRIPT = CLASS:Register();