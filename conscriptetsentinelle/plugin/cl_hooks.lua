--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local PLUGIN = PLUGIN;


-- classe du menu tab
function PLUGIN:GetPlayerScoreboardClass(player)
	local faction = player:GetFaction();

	if (faction == FACTION_CONSCRIPT) then
		return "Conscript";
		
	end;
end;