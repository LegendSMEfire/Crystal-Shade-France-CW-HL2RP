local CLASS = Clockwork.class:New("Administrateur");
	CLASS.color = Color(255, 215, 0, 255);
	CLASS.factions = {FACTION_ADMINISTRATEUR};
	CLASS.isDefault = true;
	CLASS.wagesName = "Tokens";
	CLASS.wages	= 0;
	CLASS.description = "Un Administrateur de la cité.";
	CLASS.defaultPhysDesc = "Un Administrateur de la cité.";
CLASS_ADMINISTRATEUR = CLASS:Register();