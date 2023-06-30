@addMethod(gameuiInGameMenuGameController)
protected cb func RegisterDressifyAtelierEXStore(event: ref<VirtualShopRegistration>) -> Bool {
  let storeItems = [
    "Items.Jacket_10_old_01", "Items.Jacket_10_old_02", "Items.Jacket_10_rich_01", "Items.Jacket_10_rich_02", "Items.Jacket_10_basic_01", "Items.Jacket_10_basic_02",
    "Items.Jacket_03_old_01", "Items.Jacket_03_old_02", "Items.Jacket_03_rich_01", "Items.Jacket_03_rich_02", "Items.Jacket_03_basic_01", "Items.Jacket_03_basic_02", "Items.Jacket_03_basic_03", "Items.Jacket_03_basic_04",
    "Items.SQ031_Samurai_Jacket",
    "Items.Boots_06_basic_01", "Items.Boots_06_basic_02", "Items.Boots_06_old_01", "Items.Boots_06_old_02", "Items.Boots_06_rich_01", "Items.Boots_06_rich_02", "Items.Netrunner_01_Set_Shoes"
  ];

  let basePrice = 100.0;
  let rarities = ["Legendary"];
  let rarityPriceAdj = [1.0];
  let aggregatedItems: array<String> = [];
  let aggregatedPrices: array<Int32> = [];
  let aggregatedRarities: array<String> = [];
    
  let i = 0;
  for rarity in rarities {
    let adjustedPrice: Int32 = Cast(basePrice*rarityPriceAdj[i]);
      for garment in storeItems {
        ArrayPush(aggregatedItems,garment);
        ArrayPush(aggregatedPrices,adjustedPrice);
        ArrayPush(aggregatedRarities,rarity);
      }
      i+=1;
  }
  
  event.AddStore(
    n"DressifyAtelierEX",
    "Dressify Store - Extra", 
    	aggregatedItems,
    	aggregatedPrices,
    r"base/xerduke/store/dressify_atelier_icon.inkatlas",
    n"slot_02",
    	aggregatedRarities
  );
}