--[[
	Crystal Shade France, 2019.
	Cr�er et d�velopper par XIII, Aka LegendSMEfire.
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Caisse de ravitaillement de la R�bellion Saboteur";
ITEM.category = "Caisse de ravitaillement"
ITEM.uniqueID = "pack_saboteur";
ITEM.model = "models/Items/item_item_crate.mdl";
ITEM.weight = 2;
ITEM.useText = "Ouvrir";
ITEM.description = "Une caisse de ravitaillement de la R�bellion avec le logo lambda et il y est �crit : caisse Saboteur.";
ITEM.useSound = {"physics/wood/wood_box_break2.wav", "physics/wood/wood_box_break2.wav"};


function ITEM:CanPickup(player, quickUse, itemEntity)
	if (quickUse) then
		if (!player:CanHoldWeight(self.weight)) then
			Clockwork.player:Notify(player, "Vous ne pouvez pas porter �a!");
			
			return false;
		end;
	end;
end;


function ITEM:OnUse(player, itemEntity)
	player:GiveItem(Clockwork.item:CreateInstance("weapon_frag"), true);
	player:GiveItem(Clockwork.item:CreateInstance("weapon_frag"), true);
	player:GiveItem(Clockwork.item:CreateInstance("cw_smokegrenade"), true);
	player:GiveItem(Clockwork.item:CreateInstance("cw_smokegrenade"), true);
	player:GiveItem(Clockwork.item:CreateInstance("breach"), true);
end;


function ITEM:OnDrop(player, position) end;

ITEM:Register();