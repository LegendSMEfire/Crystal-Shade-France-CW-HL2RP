--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local ITEM = Clockwork.item:New("equipable_item_base");
ITEM.name = "Veste en kevlar";
ITEM.model = "models/items/kevlar.mdl";
ITEM.weight = 3;
ITEM.useText = "Porter";
ITEM.category = "Veste en Kevlar";
ITEM.business = true;
ITEM.access = "vS";
ITEM.uniqueID = "veste_kevlar";
ITEM.description = "Une veste en kevlar.";
ITEM.isAttachment = true;
ITEM.attachmentBone = "ValveBiped.Bip01_Spine2";
ITEM.attachmentModel = "models/kevlarvest/kevlarvest.mdl";
ITEM.attachmentOffsetAngles = Angle(0, 270, 90);
ITEM.attachmentOffsetVector = Vector(0, -3, -56);

ITEM:AddData("armorAmt", -1, true);



function ITEM:GetAttachmentVisible(player, entity)
	local model = player:GetModel();

	if (player:Armor() > 0) then
		return true;
	end;
end;

function ITEM:AdjustAttachmentOffsetInfo(player, entity, info)
	if (string.find(player:GetModel(), "female")) then
		info.offsetVector = Vector(0, -1.41, -58.7);
		info.offsetAngle = Angle(0, 270, 90);
	end;
end;


function ITEM:OnWearItem(player, bIsWearing)
	if (bIsWearing) then
		Clockwork.player:CreateGear(player, "KevlarVest", self, true);

		if player:Armor() < self:GetData("armorAmt") then
			player:SetArmor(math.Clamp(self:GetData("armorAmt"), 0, 180));
		end;

		self:SetData("equipped", true);
		player:RebuildInventory();
		return true;
	else
		Clockwork.player:RemoveGear(player, "KevlarVest");
		self:SetData("armorAmt", math.Clamp(player:Armor(), 0, 180));
		self:SetData("equipped", false);

		if self:GetData("armorAmt") <= 0 then
			player:TakeItem(self);
		end;

		player:SetArmor(0);
		return false;
	end;
end;

if (SERVER) then
	function ITEM:OnInstantiated()
		if (self:GetData("armorAmt") == -1) then
			self:SetData("armorAmt", 180);
		end
	end;
else

function ITEM:OnDrop(player, position) end;

ITEM:Register();