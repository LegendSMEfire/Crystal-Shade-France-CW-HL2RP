--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Kevlard Moyen";
ITEM.model = "models/weapons/w_suitcase_passenger.mdl";
ITEM.weight = 3;
ITEM.useText = "Equiper";
ITEM.category = "Kevlar";
ITEM.business = false;
ITEM.uniqueID = "kevlar_moyen";
ITEM.description = "Un gilet assez grand en kevlar qui vous pas mal de protection.";



function ITEM:OnUse(player, itemEntity)
	if player:Armor() < 100 then
		Clockwork.player:CreateGear(player, "KevlarMoyen", self);
		player:SetArmor(50);
	else
		Clockwork.player:Notify(player, "Vous avez déjà plus d'armure que cela donne! C'est inutile de mettre ça!");
		return false;
	end;
end;


function ITEM:OnDrop(player, position) end;

ITEM:Register();