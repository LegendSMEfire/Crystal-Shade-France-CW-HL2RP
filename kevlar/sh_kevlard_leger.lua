--[[
	Crystal Shade France, 2019.
	Cr�er et d�velopper par XIII, Aka LegendSMEfire.
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Kevlard Leger";
ITEM.model = "models/weapons/w_suitcase_passenger.mdl";
ITEM.weight = 3;
ITEM.useText = "Equiper";
ITEM.category = "Kevlar";
ITEM.business = false;
ITEM.uniqueID = "kevlar_leger";
ITEM.description = "Un kevlar leger qui vous procure un peu de protection.";


function ITEM:OnUse(player, itemEntity)
	if player:Armor() < 100 then
		Clockwork.player:CreateGear(player, "Kevlar", self);
		player:SetArmor(25);
	else
		Clockwork.player:Notify(player, "Vous avez d�j� plus d'armure que cela donne! C'est inutile de mettre �a!");
		return false;
	end;
end;


function ITEM:OnDrop(player, position) end;

ITEM:Register();