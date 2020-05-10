ITEM.name = "A facewrap"
ITEM.description = "A facewrap."
ITEM.category = "Clothing"
ITEM.outfitCategory = "face"
ITEM.model = "models/props_junk/cardboard_box004a.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.bNoBodygroupReset = true
ITEM.flag = "V"

ITEM.bodyGroups = {
    ["headstrap"] = 3,
}

function ITEM:CanEquipOutfit()
    if self.player:Team() == FACTION_CITIZEN or self.player:Team() == FACTION_CWU or self.player:Team() == FACTION_CMU then
   return true
else
   return false
   end
end