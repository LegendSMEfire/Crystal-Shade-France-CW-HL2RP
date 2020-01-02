--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Caisse de ravitaillement du Cartel";
ITEM.category = "Caisse de ravitaillement"
ITEM.uniqueID = "pack_cp";
ITEM.model = "models/Items/item_item_crate.mdl";
ITEM.weight = 2;
ITEM.useText = "Ouvrir";
ITEM.description = "Une caisse de ravitaillement du Cartel avec le logo du Cartel dessus.";
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
	player:GiveItem(Clockwork.item:CreateInstance("cw_stunstick"), true);
	player:GiveItem(Clockwork.item:CreateInstance("weapon_pistol"), true);
	player:GiveItem(Clockwork.item:CreateInstance("ammo_pistol"), true);
	player:GiveItem(Clockwork.item:CreateInstance("ammo_pistol"), true);
	player:GiveItem(Clockwork.item:CreateInstance("breens_water"), true);
	player:GiveItem(Clockwork.item:CreateInstance("supplements_metropolice"), true);
end;


function ITEM:OnDrop(player, position) end;

ITEM:Register();