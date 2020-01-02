--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local ITEM = Clockwork.item:New("equipable_item_base")
ITEM.name = "Sac Combine"
ITEM.model = "models/dpfilms/metropolice/props/metrold_backpack.mdl"
ITEM.weight = 1
ITEM.category = "Sac"
ITEM.uniqueID = "sac_1"
ITEM.description = "Un sac à dos noir avec le logo du Cartel."
ITEM.addInvSpace = 6
ITEM.isAttachment = true;
ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
ITEM.attachmentOffsetAngles = Angle(90, -90, 0);
ITEM.attachmentOffsetVector = Vector(0, -6, -50);

function ITEM:OnDrop(player, position) end;


ITEM:Register()