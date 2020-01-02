--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]

local COMMAND = Clockwork.command:New("Collection");
COMMAND.tip = "Pour ouvrir la collection du serveur.";
COMMAND.flags = CMD_DEFAULT;


function COMMAND:OnRun(player, arguments)
	Clockwork.datastream:Start(player, "OpenContentURL", true);
end;

COMMAND:Register();

if (SERVER) then
	Clockwork.hint:Add("Content", "Tapez /Collection dans le chat pour ouvrir la collection du serveur");
else
	Clockwork.datastream:Hook("OpenContentURL", function()
		gui.OpenURL("https://steamcommunity.com/workshop/filedetails/?id=1838692855");
	end);
end;