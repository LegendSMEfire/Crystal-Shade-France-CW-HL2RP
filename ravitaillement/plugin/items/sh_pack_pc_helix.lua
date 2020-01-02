--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Caisse de ravitaillement du Cartel HELIX";
ITEM.category = "Caisse de ravitaillement"
ITEM.uniqueID = "pack_pc2";
ITEM.model = "models/Items/item_item_crate.mdl";
ITEM.weight = 2;
ITEM.useText = "Ouvrir";
ITEM.description = "Une caisse de ravitaillement du Cartel avec le logo du Cartel et il y est écrit : caisse HELIX.";
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
	player:GiveItem(Clockwork.item:CreateInstance("kit_de_sante"), true);
	player:GiveItem(Clockwork.item:CreateInstance("kit_de_sante"), true);
	player:GiveItem(Clockwork.item:CreateInstance("flacon_de_sante"), true);
	player:GiveItem(Clockwork.item:CreateInstance("battery"), true);
	player:GiveItem(Clockwork.item:CreateInstance("battery"), true);
end;


function ITEM:OnDrop(player, position) end;

ITEM:Register();