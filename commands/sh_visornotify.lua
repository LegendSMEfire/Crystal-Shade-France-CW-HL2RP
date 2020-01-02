--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local COMMAND = Clockwork.command:New("HUDMessage");
COMMAND.tip = "Avertissez les autres unites via leurs visieres de casque.";
COMMAND.text = "<Texte>";
COMMAND.flags = bit.bor(CMD_DEFAULT, CMD_FALLENOVER);
COMMAND.arguments = 1;


function COMMAND:OnRun(player, arguments)
	if (Schema:PlayerIsCombine(player)) then
		if (Schema:IsPlayerCombineRank( player, {"RCT", "DvL", "SeC", "OfC", "EpU"} ) or player:GetFaction() == FACTION_OTA or player:GetFaction() == FACTION_ADMINISTRATEUR or player:IsAdmin()) then
			local text = table.concat(arguments, " ");
			
			if (text == "") then
				Clockwork.player:Notify(player, "Vous n'avez pas spécifié assez de texte!");
				
				return;
			end;
			
			Schema:AddCombineDisplayLine( player:Name()..": "..text, Color(0, 128, 255, 255) );
			BroadcastLua("LocalPlayer():ConCommand('notify')")
			player:EmitSound("HL1/fvox/beep.wav")
		else
			Clockwork.player:Notify(player, "Vous n'êtes pas assez haut-gradé pour utilisez cette commande!");
		end;
	else
		Clockwork.player:Notify(player, "Vous n'êtes pas un membre du Cartel!");
	end;
end;



COMMAND:Register();