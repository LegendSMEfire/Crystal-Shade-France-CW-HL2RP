--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local ITEM = Clockwork.item:New("equipable_item_base");
ITEM.name = "Casque de travailleur";
ITEM.uniqueID = "casque_travailleur";
ITEM.model = "models/items/worker_helmet.mdl";
ITEM.weight = 0.4;
ITEM.category = "Casque/Masque/Chapeau";
ITEM.business = false;
ITEM.description = "test";
ITEM.isAttachment = true;
ITEM.attachmentBone = "ValveBiped.Bip01_Head1";
ITEM.attachmentModel = "models/items/worker_helmet.mdl";
ITEM.attachmentOffsetVector = Vector(0, 3.54, 2.83)
ITEM.attachmentOffsetAngles = Angle(265.52, 268.52, 0);
ITEM.attachmentModelScale = Vector(0.85, 0.98, 0.95);



function ITEM:AdjustAttachmentOffsetInfo(player, entity, info)
	if (string.find(player:GetModel(), "female")) then
		info.offsetVector = Vector(0, 3.2, 2.83);
		info.offsetAngle = Angle(265.52, 268.52, 0);
		info.offsetScale = Angle(0.95, 0.98, 0.95);
	end;
end;



function ITEM:OnDrop(player, position) end;


ITEM:Register();