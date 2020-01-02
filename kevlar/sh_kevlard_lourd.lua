--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Kevlard Lourd";
ITEM.model = "models/weapons/w_suitcase_passenger.mdl";
ITEM.weight = 3;
ITEM.useText = "Equiper";
ITEM.category = "Kevlar";
ITEM.business = false;
ITEM.uniqueID = "kevlar_lourd";
ITEM.description = "Un gilet assez grand en kevlar qui vous procure beaucoup de protection.";


function ITEM:OnUse(player, itemEntity)
	if player:Armor() < 100 then
		Clockwork.player:CreateGear(player, "Kevlar", self);
		player:SetArmor(100);
	else
		Clockwork.player:Notify(player, "Vous avez déjà trop de kevlard!");
		return false;
	end;
end;


function ITEM:OnDrop(player, position) end;

ITEM:Register();