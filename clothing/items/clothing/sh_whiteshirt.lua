ITEM.name = "White Shirt"
ITEM.description = "A white shirt."
ITEM.category = "Clothing"
ITEM.outfitCategory = "torso"
ITEM.model = "models/props_junk/cardboard_box004a.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.bNoBodygroupReset = true
ITEM.price = 200

ITEM.bodyGroups = {
    ["torso"] = 17,
}

function ITEM:CanEquipOutfit()
    if self.player:Team() == FACTION_CITIZEN or self.player:Team() == FACTION_CWU or self.player:Team() == FACTION_CMU then
   return true
else
   return false
   end
end