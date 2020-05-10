ITEM.name = "Boonie hat"
ITEM.description = "A Boonie hat."
ITEM.category = "Clothing"
ITEM.outfitCategory = "headgear"
ITEM.model = "models/props_junk/cardboard_box004a.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.bNoBodygroupReset = true
ITEM.price = 75

ITEM.bodyGroups = {
    ["headgear"] = 2,
}

function ITEM:CanEquipOutfit()
    if self.player:Team() == FACTION_CITIZEN or self.player:Team() == FACTION_CWU or self.player:Team() == FACTION_CMU then
   return true
else
   return false
   end
end