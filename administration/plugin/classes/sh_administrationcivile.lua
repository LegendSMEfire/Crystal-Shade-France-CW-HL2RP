local CLASS = Clockwork.class:New("Administration Civile");
	CLASS.color = Color(255, 215, 0, 255);
	CLASS.factions = {FACTION_ADMINISTRATIONCIVILE};
	CLASS.isDefault = true;
	CLASS.wagesName = "Tokens";
	CLASS.wages	= 0;
	CLASS.description = "Un Membre de l'Administration Civile.";
	CLASS.defaultPhysDesc = "Un Membre de l'Administration Civile.";
CLASS_ADMINISTRATIONCIVILE = CLASS:Register();