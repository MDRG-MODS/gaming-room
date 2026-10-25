--This script was generated automatically!
--Good luck with making the mod!
--May Sheep be with you!
function ChangeTV(value, item0)
  if item0.IsEquipped() and value then
     TextureOverriderManager.RoomManager.SetSprite("/Room/TV/TV", TV)
  else            
     TextureOverriderManager.RoomManager.RestoreSprite("/Room/TV/TV", TV)
  end
                   
end
itemprefab0 = ModUtilities.CreateItemPrefab()
itemprefab0.Name = 'Custom TV'
itemprefab0.Description = 'TV'
itemprefab0.Price = 100
itemprefab0.PossibleEquipmentSlots = {'Room_TV'}
itemprefab0.IsIllegal = false
itemprefab0.HasQuality = false
itemprefab0.IsStackable = false
itemprefab0.Category = ItemCategory.Room
itemprefab0.CanChangeColor = true
itemprefab0.ColorSlots = {ColorSlot.CreateInstance('main', ColorPaletteManager.GetColorPaletteByName('partpalette'))}
itemprefab0.ScratchType = ScratchTextureType.Universal
itemprefab0.SusModifiers = {}
itemprefab0.SpecialEffectAction = ChangeTV

TV = ModUtilities. GetSpriteReference(CurrentModGuid, "/TV/TV.png")

item0 = ModUtilities.CreateNewItemAutoAssignId(CurrentModGuid, itemprefab0)
ModUtilities.AddSingleBuyItemToShop('clothier', item0)



function ChangeTVlight(value, item1)
  if item1.IsEquipped() and value then
     TextureOverriderManager.RoomManager.SetSprite("/Room/TV/TV light", TVlight)
  else            
     TextureOverriderManager.RoomManager.RestoreSprite("/Room/TV/TV light", TVlight)
  end
                   
end

itemprefab1 = ModUtilities.CreateItemPrefab()
itemprefab1.Name = 'Custom TV light'
itemprefab1.Description = 'Replace or modify the TVlight.png picture in the mod file.'
itemprefab1.Price = 100
itemprefab1.PossibleEquipmentSlots = {'Room_TVlight'}
itemprefab1.IsIllegal = false
itemprefab1.HasQuality = false
itemprefab1.IsStackable = false
itemprefab1.Category = ItemCategory.Room
itemprefab1.CanChangeColor = true
itemprefab1.ColorSlots = {ColorSlot.CreateInstance('main', ColorPaletteManager.GetColorPaletteByName('partpalette'))}
itemprefab1.ScratchType = ScratchTextureType.Universal
itemprefab1.SusModifiers = {}
itemprefab1.SpecialEffectAction = ChangeTVlight

TVlight = ModUtilities. GetSpriteReference(CurrentModGuid, "/TV/TVlight.png")

item1 = ModUtilities.CreateNewItemAutoAssignId(CurrentModGuid, itemprefab1)
ModUtilities.AddSingleBuyItemToShop('clothier', item1)

