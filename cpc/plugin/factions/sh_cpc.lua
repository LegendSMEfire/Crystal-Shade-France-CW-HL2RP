--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local FACTION = Clockwork.faction:New("Comité de Prospérité Civile");

FACTION.whitelist = true;
FACTION.useFullName = true;
FACTION.material = "";


FACTION.humanVoices = true;
FACTION.canUseRations = true;
FACTION.canUseRationToken = true;
FACTION.relocationCoupon = true;
FACTION.giveCard = "comite_carte";
FACTION.humanVoices = true;
FACTION.canUseUnionLock = true;

FACTION.npcRelations = {
	["npc_turret_floor"] = D_NU,
	["npc_combine_camera"] = D_NU,
	["npc_turret_ceiling"] = D_NU,
	["npc_rollermine"] = D_NU,
	["npc_helicopter"] = D_NU,
	["npc_combinegunship"] = D_NU,
	["npc_strider"] = D_NU,
	["npc_metropolice"] = D_LI,
	["npc_hunter"] = D_NU,
	["npc_combine_s"] = D_NU,
	["npc_manhack"] = D_LI,
};

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

FACTION_CPC = FACTION:Register();