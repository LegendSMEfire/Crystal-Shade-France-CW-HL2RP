--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]


local ITEM = Clockwork.item:New("equipable_item_base");
ITEM.name = "Casque Anti Emeute";
ITEM.uniqueID = "casque_combine_riot_1";
ITEM.model = "models/helm_08.mdl";
ITEM.weight = 0.4;
ITEM.category = "Casque/Masque/Chapeau";
ITEM.business = false;
ITEM.description = "test";

ITEM.isAttachment = true;
ITEM.attachmentBone = "ValveBiped.Bip01_Head1";
ITEM.attachmentModel = "models/helm_08.mdl";
ITEM.attachmentOffsetVector = Vector(-0.71, 0.71, -2.12)
ITEM.attachmentOffsetAngles = Angle(0, 271.49, 0);
ITEM.attachmentModelScale = Vector(1.1, 1.05, 1.05);

ITEM:AddData("armorAmt", -1, true);


-- A function to get whether the attachment is visible.
function ITEM:GetAttachmentVisible(player, entity)
	local model = player:GetModel();

	if (player:Armor() > 0) then
		return true;
	end;
end;


-- Called when a player wears the accessory.
function ITEM:OnWearItem(player, bIsWearing)
	if (bIsWearing) then
		Clockwork.player:CreateGear(player, "KevlarVest", self, true);

		if player:Armor() < self:GetData("armorAmt") then
			player:SetArmor(math.Clamp(self:GetData("armorAmt"), 0, 75));
		end;

		self:SetData("equipped", true);
		player:RebuildInventory();
		return true;
	else
		Clockwork.player:RemoveGear(player, "KevlarVest");
		self:SetData("armorAmt", math.Clamp(player:Armor(), 0, 75));
		self:SetData("equipped", false);

		if self:GetData("armorAmt") <= 0 then
			player:TakeItem(self);
		end;

		player:SetArmor(0);
		return false;
	end;
end;

function ITEM:GetAttachmentModelScale(player, entity)
	if ( string.find(player:GetModel(), "female") ) then
		return Vector() * 0.9;
	end;
end;

function ITEM:AdjustAttachmentOffsetInfo(player, entity, info)
	if ( string.find(player:GetModel(), "female") ) then
		info.offsetVector = Vector(-0.71, 0.75, -2.83);
		info.offsetAngle = Angle(0, 271.49, 0);
	end;
end;



function ITEM:OnDrop(player, position) end;


ITEM:Register();