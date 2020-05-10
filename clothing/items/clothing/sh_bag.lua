ITEM.name = "Bag"
ITEM.model = "models/props_junk/cardboard_box004a.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A bag."
ITEM.outfitCategory = "bag"
ITEM.bNoBodygroupReset = true
ITEM.price = 150

ITEM.bodyGroups = {
    ["bag"] = 1,
}


function ITEM:CanEquipOutfit()
    if self.player:Team() == FACTION_CITIZEN or self.player:Team() == FACTION_CWU or self.player:Team() == FACTION_CMU then
   return true
else
   return false
   end
end