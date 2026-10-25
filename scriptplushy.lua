--This script was generated automatically!
--Good luck with making the mod!
--May Sheep be with you!
function Changeplush(value, item0)
  if item0.IsEquipped() and value then
     TextureOverriderManager.RoomManager.SetSprite("/Room/SpiderPlush", plushy)
  else            
     TextureOverriderManager.RoomManager.RestoreSprite("/Room/SpiderPlush", plushy)
  end
                   
end
itemprefab0 = ModUtilities.CreateItemPrefab()
itemprefab0.Name = 'Custom plushy'
itemprefab0.Description = 'Players can customize their favorite plushy.'
itemprefab0.Price = 100
itemprefab0.PossibleEquipmentSlots = {'Room_Plush'}
itemprefab0.IsIllegal = false
itemprefab0.HasQuality = false
itemprefab0.IsStackable = false
itemprefab0.Category = ItemCategory.Room
itemprefab0.CanChangeColor = false
itemprefab0.ColorSlots = {}
itemprefab0.ScratchType = ScratchTextureType.Universal
itemprefab0.SusModifiers = {}
itemprefab0.SpecialEffectAction = Changeplush

plushy = ModUtilities. GetSpriteReference(CurrentModGuid, "plush.png")



item0 = ModUtilities.CreateNewItemAutoAssignId(CurrentModGuid, itemprefab0)
ModUtilities.AddSingleBuyItemToShop('clothier', item0)

