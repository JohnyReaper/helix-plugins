ITEM.name = "Gasmask"
ITEM.model = "models/fty/items/gasmask.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A metal plated mask with a respirator on it."
ITEM.outfitCategory = "face"
ITEM.bNoBodygroupReset = true
ITEM.flag = "V"
ITEM.iconCam = {
	pos = Vector(-189.54248046875, 0, 3),
	ang = Angle(0, 0, 0),
	fov = 5.2941176470588
}

ITEM.bodyGroups = {
    ["headstrap"] = 4,
}

function ITEM:PopulateTooltip(tooltip)
    local tip = tooltip:AddRow("clothingwarning")
    tip:SetBackgroundColor(derma.GetColor("Error", tooltip))
    tip:SetText("This clothing contains items which are illegal to possess, wearing it and being caught will result with you being arrested and charged.")
    tip:SetFont("DermaDefault")
    tip:SizeToContents()
end

function ITEM:CanEquipOutfit()
    if self.player:Team() == FACTION_CITIZEN or self.player:Team() == FACTION_CWU or self.player:Team() == FACTION_CMU then
   return true
else
   return false
   end
end