--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local ITEM = Clockwork.item:New("equipable_item_base");
ITEM.name = "Veste en kevlar use";
ITEM.model = "models/items/kevlar.mdl";
ITEM.weight = 3;
ITEM.useText = "Porter";
ITEM.category = "Veste en Kevlar";
ITEM.uniqueID = "kevlard_use";
ITEM.description = "test.";
ITEM.isAttachment = true;
ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
ITEM.attachmentModel = "models/kevlarvest/kevlarlite.mdl";
ITEM.attachmentOffsetAngles = Angle(0, 270, 90);
ITEM.attachmentOffsetVector = Vector(0, -3, -56);



function ITEM:AdjustAttachmentOffsetInfo(player, entity, info)
	if (string.find(player:GetModel(), "female")) then
		info.offsetVector = Vector(0, -1.41, -58.7);
		info.offsetAngle = Angle(0, 270, 90);
	end;
end;


function ITEM:OnDrop(player, position) end;


ITEM:Register();