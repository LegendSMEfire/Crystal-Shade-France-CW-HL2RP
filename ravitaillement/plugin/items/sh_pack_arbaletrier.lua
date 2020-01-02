--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Caisse de ravitaillement de la Rebellion Arbaletrier";
ITEM.category = "Caisse de ravitaillement"
ITEM.uniqueID = "pack_arbaletrier";
ITEM.model = "models/Items/item_item_crate.mdl";
ITEM.weight = 2;
ITEM.useText = "Ouvrir";
ITEM.description = "Une caisse de ravitaillement de la Rebellion avec le logo lambda et il y est écrit : caisse Arbaletrier.";
ITEM.useSound = {"physics/wood/wood_box_break2.wav", "physics/wood/wood_box_break2.wav"};


function ITEM:CanPickup(player, quickUse, itemEntity)
	if (quickUse) then
		if (!player:CanHoldWeight(self.weight)) then
			Clockwork.player:Notify(player, "Vous ne pouvez pas porter ça!");
			
			return false;
		end;
	end;
end;


function ITEM:OnUse(player, itemEntity)
	player:GiveItem(Clockwork.item:CreateInstance("ammo_xbowbolt"), true);
	player:GiveItem(Clockwork.item:CreateInstance("ammo_xbowbolt"), true);
	player:GiveItem(Clockwork.item:CreateInstance("ammo_xbowbolt"), true);
	player:GiveItem(Clockwork.item:CreateInstance("ammo_xbowbolt"), true);
	player:GiveItem(Clockwork.item:CreateInstance("ammo_xbowbolt"), true);
end;


function ITEM:OnDrop(player, position) end;

ITEM:Register();