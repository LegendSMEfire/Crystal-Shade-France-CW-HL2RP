--[[
	Crystal Shade France, 2019.
	Créer et développer par XIII, Aka LegendSMEfire.
--]]


-- VERSION ALPHA
surface.CreateFont( "HUD", {
	font = "DermaLarge",
	size = ScreenScale(12),
	weight = 0,
	antialias = true,
} )

local lp = LocalPlayer()

function HudPaint() 
    if (Schema:PlayerIsCombine(LocalPlayer())) then
	if LocalPlayer():Health() == 30 or LocalPlayer():Health() < 30 then
    draw.SimpleText( "! BLESSURES GRAVES !", "DermaLarge", ScrW() * 0.5, ScrH() * 0.25, Color(255, 0, 0, math.sin(CurTime() * 2) * 255), TEXT_ALIGN_CENTER )
    draw.SimpleText( "! ATTENTION !", "DermaLarge", ScrW() * 0.5, ScrH() *0.25 - 100, Color(255, 255, 0, math.sin(CurTime() * 2) * 255), TEXT_ALIGN_CENTER ) 
	end 
end
end

hook.Add("HUDPaint", "PaintsHUD", HudPaint) 