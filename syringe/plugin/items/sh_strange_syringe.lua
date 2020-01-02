--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local ITEM = Clockwork.item:New();

ITEM.name = "Étrange seringue";
ITEM.uniqueID = "syringe_strange";
ITEM.cost = 1000;
ITEM.model = "models/props_c17/trappropeller_lever.mdl";
ITEM.weight = 1;
ITEM.useText = "Injectez";
ITEM.category = "Syringe"
ITEM.business = true;
ITEM.description = "une seringue étrange, avec une substance inconnue.";
ITEM.useSound = {"npc/zombie/foot_slide2.wav", "npc/zombie/foot_slide3.wav"};


function ITEM:OnUse(player, itemEntity)
	player:UpdateAttribute(ATB_ACROBATICS, 10);
	player:UpdateAttribute(ATB_ENDURANCE, 10);
	player:UpdateAttribute(ATB_AGILITY, 10); 
	player:UpdateAttribute(ATB_STRENGTH, 10); 
	player:UpdateAttribute(ATB_DEXTERITY, 10); 
end


function ITEM:OnDrop(player, position) end;
	
ITEM:Register();