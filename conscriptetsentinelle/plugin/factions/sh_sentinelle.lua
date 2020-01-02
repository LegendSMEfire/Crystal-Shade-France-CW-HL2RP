--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local FACTION = Clockwork.faction:New("Sentinelle de l'Union");

FACTION.whitelist = true;
FACTION.useFullName = true;
FACTION.canUseRations = true;
FACTION.canUseRationToken = true;
FACTION.relocationCoupon = true;
FACTION.material = "";



function FACTION:OnTransferred(player, faction, name)
	if (Schema:PlayerIsCombine(player)) then
		if (name) then
			local models = self.models[ string.lower( player:QueryCharacter("gender") ) ];
			
			if (models) then
				player:SetCharacterData("model", models[ math.random(#models) ], true);
				
				Clockwork.player:SetName(player, name, true);
			end;
		else
			return false, "Vous devez specifier un nom comme troisieme argument!";
		end;
	end;
end;


FACTION.listenChannels = {
	["overwatch"] = 1,
	["cp_main"] = 1,
	["ac"] = 1,
	["combine"] = 1 
};

FACTION_SENTINELLE = FACTION:Register();