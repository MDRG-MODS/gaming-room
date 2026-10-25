--This script was generated automatically!
--Good luck with making the mod!
--May Sheep be with you!
function Changebed(value, item0)
  if item0.IsEquipped() and value then
     TextureOverriderManager.RoomManager.SetSprite("/Room/Bed", bed)
  else            
     TextureOverriderManager.RoomManager.RestoreSprite("/Room/Bed", bed)
  end
                   
end
itemprefab0 = ModUtilities.CreateItemPrefab()
itemprefab0.Name = 'Custom bed'
itemprefab0.Description = 'Replace or modify the bed.png picture in the mod file.'
itemprefab0.Price = 103
itemprefab0.PossibleEquipmentSlots = {'Room_bed'}
itemprefab0.IsIllegal = false
itemprefab0.HasQuality = false
itemprefab0.IsStackable = false
itemprefab0.Category = ItemCategory.Room
itemprefab0.CanChangeColor = true
itemprefab0.ColorSlots = {ColorSlot.CreateInstance('main', ColorPaletteManager.GetColorPaletteByName('partpalette'))}
itemprefab0.ScratchType = ScratchTextureType.Universal
itemprefab0.SusModifiers = {}
itemprefab0.SpecialEffectAction = Changebed

bed = ModUtilities. GetSpriteReference(CurrentModGuid, "bed.png")



item0 = ModUtilities.CreateNewItemAutoAssignId(CurrentModGuid, itemprefab0)
ModUtilities.AddSingleBuyItemToShop('clothier', item0)