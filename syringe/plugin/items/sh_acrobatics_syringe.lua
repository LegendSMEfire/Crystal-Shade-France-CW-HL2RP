--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Seringue Acrobaties";
ITEM.uniqueID = "syringe_acrobatics";
ITEM.cost = 500;
ITEM.model = "models/props_c17/trappropeller_lever.mdl";
ITEM.weight = 1;
ITEM.useText = "Injectez";
ITEM.category = "Syringe"
ITEM.business = true;
ITEM.description = "Une seringue pour augmenter vos acrobaties de 5 points.";
ITEM.useSound = {"npc/zombie/foot_slide2.wav", "npc/zombie/foot_slide3.wav"};


function ITEM:OnUse(player, itemEntity)
	player:UpdateAttribute(ATB_ACROBATICS, 5);
end;


function ITEM:OnDrop(player, position) end;
	
ITEM:Register();