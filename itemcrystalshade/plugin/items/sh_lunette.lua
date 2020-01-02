--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local ITEM = Clockwork.item:New("equipable_item_base");
ITEM.name = "Lunette";
ITEM.cost = 200;
ITEM.model = "models/gmod_tower/klienerglasses.mdl";
ITEM.weight = 3;
ITEM.useText = "Porter";
ITEM.category = "Lunette";
ITEM.business = true;
ITEM.uniqueID = "lunette_1";
ITEM.description = "test.";
ITEM.isAttachment = true;
ITEM.attachmentBone = "ValveBiped.Bip01_Head1";
ITEM.attachmentModel = "models/gmod_tower/klienerglasses.mdl";
ITEM.attachmentOffsetAngles = Angle(0, 2.12, 3.54);
ITEM.attachmentOffsetVector = Vector(181.99, 271.49, 90);


function ITEM:OnDrop(player, position) end;

ITEM:Register();