--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Seringue de vie";
ITEM.uniqueID = "syringe_heal";
ITEM.cost = 100;
ITEM.model = "models/props_c17/trappropeller_lever.mdl";
ITEM.weight = 1;
ITEM.useText = "Injectez";
ITEM.category = "Syringe"
ITEM.business = true;
ITEM.description = "Une seringue pour vous soigner.";
ITEM.useSound = {"npc/zombie/foot_slide2.wav, items/smallmedkit1.wav"};


function ITEM:OnUse(player, itemEntity)
	player:SetHealth(math.Clamp(player:Health() + 25, 0, player:GetMaxHealth()))
end;



function ITEM:OnDrop(player, position) end;
	
ITEM:Register();
