--This script was generated automatically!
--Good luck with making the mod!
--May Sheep be with you!
function ChangeBack(value, item0)
  if item0.IsEquipped() and value then
     TextureOverriderManager.RoomManager.SetSprite("/Room/back", bg)
  else            
     TextureOverriderManager.RoomManager.RestoreSprite("/Room/back", bg)
  end
                   
end
itemprefab0 = ModUtilities.CreateItemPrefab()
itemprefab0.Name = 'Custom background'
itemprefab0.Description = 'Replace or modify the bg.png picture in the mod file.'
itemprefab0.Price = 100
itemprefab0.PossibleEquipmentSlots = {'Room_WallDecoration'}
itemprefab0.IsIllegal = false
itemprefab0.HasQuality = false
itemprefab0.IsStackable = false
itemprefab0.Category = ItemCategory.Room
itemprefab0.CanChangeColor = true
itemprefab0.ColorSlots = {ColorSlot.CreateInstance('main', ColorPaletteManager.GetColorPaletteByName('partpalette'))}
itemprefab0.ScratchType = ScratchTextureType.Universal
itemprefab0.SusModifiers = {}
itemprefab0.SpecialEffectAction = ChangeBack

bg = ModUtilities. GetSpriteReference(CurrentModGuid, "bg.png")



item0 = ModUtilities.CreateNewItemAutoAssignId(CurrentModGuid, itemprefab0)
ModUtilities.AddSingleBuyItemToShop('clothier', item0)