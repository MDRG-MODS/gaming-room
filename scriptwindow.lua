--This script was generated automatically!
--Good luck with making the mod!
--May Sheep be with you!
function Changewindow(value, item0)
  if item0.IsEquipped() and value then
     TextureOverriderManager.RoomManager.SetSprite("/Room/Window", window)
  else            
     TextureOverriderManager.RoomManager.RestoreSprite("/Room/Window", window)
  end
                   
end
itemprefab0 = ModUtilities.CreateItemPrefab()
itemprefab0.Name = 'Custom window'
itemprefab0.Description = 'Replace or modify the window.png picture in the mod file.'
itemprefab0.Price = 103
itemprefab0.PossibleEquipmentSlots = {'Room_win'}
itemprefab0.IsIllegal = false
itemprefab0.HasQuality = false
itemprefab0.IsStackable = false
itemprefab0.Category = ItemCategory.Room
itemprefab0.CanChangeColor = true
itemprefab0.ColorSlots = {ColorSlot.CreateInstance('main', ColorPaletteManager.GetColorPaletteByName('partpalette'))}
itemprefab0.ScratchType = ScratchTextureType.Universal
itemprefab0.SusModifiers = {}
itemprefab0.SpecialEffectAction = Changewindow

window = ModUtilities. GetSpriteReference(CurrentModGuid, "window.png")



item0 = ModUtilities.CreateNewItemAutoAssignId(CurrentModGuid, itemprefab0)
ModUtilities.AddSingleBuyItemToShop('clothier', item0)