--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local PLUGIN = PLUGIN;


-- Pour ouvrir les portes 
function PLUGIN:PlayerCanUseDoor(player, door)
	if (player:GetFaction() == FACTION_CONSCRIPT) then
		return true;
	end;
end;