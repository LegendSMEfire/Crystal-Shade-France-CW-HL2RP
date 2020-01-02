--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]
local FACTION = Clockwork.faction:New("Administrateur");


FACTION.whitelist = true;
FACTION.useFullName = true;
FACTION.canUseRations = true;
FACTION.canUseRationToken = true;
FACTION.relocationCoupon = true;
FACTION.material = "";
FACTION.models = {
	female = {
		"models/lt_c/sci_fi/humans/female_01.mdl",
		"models/lt_c/sci_fi/humans/female_02.mdl",
		"models/lt_c/sci_fi/humans/female_03.mdl",
		"models/lt_c/sci_fi/humans/female_zoey.mdl",
		"models/lt_c/sci_fi/humans/female_wraith.mdl"
	},
	male = {
		"models/lt_c/sci_fi/humans/male_bill.mdl",
		"models/lt_c/sci_fi/humans/male_09.mdl",
		"models/lt_c/sci_fi/humans/male_08.mdl",
		"models/lt_c/sci_fi/humans/male_02.mdl",
		"models/lt_c/sci_fi/humans/male_06.mdl",
	};
};


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

FACTION.listenChannels = {
	["overwatch"] = 1,
	["cp_main"] = 1,
	["ac"] = 1,
	["combine"] = 1 
};

FACTION.humanVoices = true;

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

FACTION_ADMINISTRATEUR = FACTION:Register();