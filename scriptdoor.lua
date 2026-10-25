--This script was generated automatically!
--Good luck with making the mod!
--May Sheep be with you!
function Changedoor(value, item0)
  if item0.IsEquipped() and value then
     TextureOverriderManager.RoomManager.SetSprite("/Room/Door", door)
  else            
     TextureOverriderManager.RoomManager.RestoreSprite("/Room/Door", door)
  end
                   
end
itemprefab0 = ModUtilities.CreateItemPrefab()
itemprefab0.Name = 'Custom door'
itemprefab0.Description = 'Custom door'
itemprefab0.Price = 1006
itemprefab0.PossibleEquipmentSlots = {'Room_door'}
itemprefab0.IsIllegal = false
itemprefab0.HasQuality = false
itemprefab0.IsStackable = false
itemprefab0.Category = ItemCategory.Room
itemprefab0.CanChangeColor = true
itemprefab0.ColorSlots = {ColorSlot.CreateInstance('main', ColorPaletteManager.GetColorPaletteByName('partpalette'))}
itemprefab0.ScratchType = ScratchTextureType.Universal
itemprefab0.SusModifiers = {}
itemprefab0.SpecialEffectAction = Changedoor

door = ModUtilities. GetSpriteReference(CurrentModGuid, "Door.png")



item0 = ModUtilities.CreateNewItemAutoAssignId(CurrentModGuid, itemprefab0)
ModUtilities.AddSingleBuyItemToShop('clothier', item0)

