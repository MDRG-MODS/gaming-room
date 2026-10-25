--This script was generated automatically!
--Good luck with making the mod!
--May Sheep be with you!
function ChangePC(value, item0)
  if item0.IsEquipped() and value then
     TextureOverriderManager.RoomManager.SetSprite("/Room/PC/PC", PC)
  else            
     TextureOverriderManager.RoomManager.RestoreSprite("/Room/PC/PC", PC)
  end
                   
end

itemprefab0 = ModUtilities.CreateItemPrefab()
itemprefab0.Name = 'Custom PC'
itemprefab0.Description = 'Replace or modify the PC.png picture in the mod file.'
itemprefab0.Price = 1008
itemprefab0.PossibleEquipmentSlots = {'Room_PC'}
itemprefab0.IsIllegal = false
itemprefab0.HasQuality = false
itemprefab0.IsStackable = false
itemprefab0.Category = ItemCategory.Room
itemprefab0.CanChangeColor = true
itemprefab0.ColorSlots = {ColorSlot.CreateInstance('main', ColorPaletteManager.GetColorPaletteByName('partpalette'))}
itemprefab0.ScratchType = ScratchTextureType.Universal
itemprefab0.SusModifiers = {}
itemprefab0.SpecialEffectAction = ChangePC

PC = ModUtilities. GetSpriteReference(CurrentModGuid, "/PC/PC.png")

item0 = ModUtilities.CreateNewItemAutoAssignId(CurrentModGuid, itemprefab0)
ModUtilities.AddSingleBuyItemToShop('clothier', item0)



function ChangePClight(value, item1)
  if item1.IsEquipped() and value then
     TextureOverriderManager.RoomManager.SetSprite("/Room/PC/Screen light", PClight)
  else            
     TextureOverriderManager.RoomManager.RestoreSprite("/Room/PC/Screen light", PClight)
  end
                   
end

itemprefab1 = ModUtilities.CreateItemPrefab()
itemprefab1.Name = 'Custom PClight'
itemprefab1.Description = 'Replace or modify the PClight.png picture in the mod file.'
itemprefab1.Price = 1024
itemprefab1.PossibleEquipmentSlots = {'Room_PClight'}
itemprefab1.IsIllegal = false
itemprefab1.HasQuality = false
itemprefab1.IsStackable = false
itemprefab1.Category = ItemCategory.Room
itemprefab1.CanChangeColor = true
itemprefab1.ColorSlots = {ColorSlot.CreateInstance('main', ColorPaletteManager.GetColorPaletteByName('partpalette'))}
itemprefab1.ScratchType = ScratchTextureType.Universal
itemprefab1.SusModifiers = {}
itemprefab1.SpecialEffectAction = ChangePClight

PClight = ModUtilities. GetSpriteReference(CurrentModGuid, "/PC/Screenlight.png")

item1 = ModUtilities.CreateNewItemAutoAssignId(CurrentModGuid, itemprefab1)
ModUtilities.AddSingleBuyItemToShop('clothier', item1)



function ChangePCrgb(value, item2)
  if item2.IsEquipped() and value then
     TextureOverriderManager.RoomManager.SetSprite("/Room/PC/PC rgb", PCrgb)
  else            
     TextureOverriderManager.RoomManager.RestoreSprite("/Room/PC/PC rgb", PCrgb)
  end
                   
end

itemprefab2 = ModUtilities.CreateItemPrefab()
itemprefab2.Name = 'Custom PC rgb'
itemprefab2.Description = 'Replace or modify the PCrgb.png picture in the mod file.'
itemprefab2.Price = 164
itemprefab2.PossibleEquipmentSlots = {'Room_PCrgb'}
itemprefab2.IsIllegal = false
itemprefab2.HasQuality = false
itemprefab2.IsStackable = false
itemprefab2.Category = ItemCategory.Room
itemprefab2.CanChangeColor = true
itemprefab2.ColorSlots = {ColorSlot.CreateInstance('main', ColorPaletteManager.GetColorPaletteByName('partpalette'))}
itemprefab2.ScratchType = ScratchTextureType.Universal
itemprefab2.SusModifiers = {}
itemprefab2.SpecialEffectAction = ChangePCrgb

PCrgb = ModUtilities. GetSpriteReference(CurrentModGuid, "/PC/PCrgb.png")

item2 = ModUtilities.CreateNewItemAutoAssignId(CurrentModGuid, itemprefab2)
ModUtilities.AddSingleBuyItemToShop('clothier', item2)