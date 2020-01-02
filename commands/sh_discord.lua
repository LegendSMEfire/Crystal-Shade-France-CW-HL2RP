--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local COMMAND = Clockwork.command:New("Discord");
COMMAND.tip = "Pour rejoindre le serveur Discord. /Discord";
COMMAND.flags = CMD_DEFAULT;


function COMMAND:OnRun(player, arguments)
	Clockwork.datastream:Start(player, "OpenDiscordURL", true);
end;

COMMAND:Register();

if (SERVER) then
	Clockwork.hint:Add("Discord", "Tapez /Discord dans le chat pour ouvrir le serveur discord.");
else
	Clockwork.datastream:Hook("OpenDiscordURL", function()
		gui.OpenURL("https://discord.gg/9xa88mg");
	end);
end;