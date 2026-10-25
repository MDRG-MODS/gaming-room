--This script was generated automatically!
--Good luck with making the mod!
--May Sheep be with you!
function Changesofa(value, item0)
  if item0.IsEquipped() and value then
     TextureOverriderManager.RoomManager.SetSprite("/Room/couch", sofa)
  else            
     TextureOverriderManager.RoomManager.RestoreSprite("/Room/couch", sofa)
  end
                   
end
itemprefab0 = ModUtilities.CreateItemPrefab()
itemprefab0.Name = 'Custom couch'
itemprefab0.Description = 'Custom sofa'
itemprefab0.Price = 100
itemprefab0.PossibleEquipmentSlots = {'Room_sofa'}
itemprefab0.IsIllegal = false
itemprefab0.HasQuality = false
itemprefab0.IsStackable = false
itemprefab0.Category = ItemCategory.Room
itemprefab0.CanChangeColor = true
itemprefab0.ColorSlots = {ColorSlot.CreateInstance('main', ColorPaletteManager.GetColorPaletteByName('partpalette'))}
itemprefab0.ScratchType = ScratchTextureType.Universal
itemprefab0.SusModifiers = {}
itemprefab0.SpecialEffectAction = Changesofa

sofa = ModUtilities. GetSpriteReference(CurrentModGuid, "couch.png")



item0 = ModUtilities.CreateNewItemAutoAssignId(CurrentModGuid, itemprefab0)
ModUtilities.AddSingleBuyItemToShop('clothier', item0)

