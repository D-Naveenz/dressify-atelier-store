@addMethod(gameuiInGameMenuGameController)
protected cb func RegisterDressifyAtelierStore(event: ref<VirtualShopRegistration>) -> Bool {
  let storeItems = [
    "Items.TShirt_07_basic_01", "Items.TShirt_07_basic_02", "Items.TShirt_07_old_01", "Items.TShirt_07_old_02", "Items.TShirt_07_rich_01", "Items.TShirt_07_rich_02", "Items.Q203_Epilogue_TShirt",
    "Items.TShirt_04_old_01", "Items.TShirt_04_old_02", "Items.TShirt_04_old_03", "Items.TShirt_04_old_04", "Items.TShirt_04_old_05", "Items.TShirt_04_old_06",
    "Items.Dress_01_basic_01", "Items.Dress_01_basic_02", "Items.Dress_01_basic_03", "Items.Dress_01_rich_01", "Items.Dress_01_rich_02", "Items.Dress_01_rich_03",
    "Items.TShirt_09_old_01", "Items.TShirt_09_old_02", "Items.TShirt_09_basic_01", "Items.TShirt_09_basic_02",
    "Items.Jacket_17_basic_02",
    "Items.Jacket_11_old_01", "Items.Jacket_11_old_02", "Items.Jacket_11_rich_02", "Items.Jacket_11_basic_01", "Items.Jacket_11_basic_02", "Items.Rockerboy_01_Set_Jacket",
    "Items.Vest_19_basic_01", "Items.Vest_19_basic_02", "Items.Vest_19_old_01", "Items.Vest_19_rich_01", "Items.Vest_19_rich_02",
    "Items.Coat_04_basic_01", "Items.Coat_04_basic_02", "Items.Coat_04_basic_03", "Items.Coat_04_old_01", "Items.Coat_04_old_02", "Items.Coat_04_rich_01", "Items.Coat_04_rich_02",
    "Items.TShirt_03_basic_01", "Items.TShirt_03_basic_02", "Items.TShirt_03_basic_03", "Items.TShirt_03_old_01", "Items.TShirt_03_old_02", "Items.TShirt_03_old_03", "Items.TShirt_03_rich_01", "Items.TShirt_03_rich_02", "Items.TShirt_03_rich_03", "Items.Q001_TShirt",
    "Items.FormalShirt_02_basic_01", "Items.FormalShirt_02_basic_02", "Items.FormalShirt_02_basic_03", "Items.FormalShirt_02_basic_04", "Items.FormalShirt_02_old_01", "Items.FormalShirt_02_old_02", "Items.FormalShirt_02_old_03", "Items.FormalShirt_02_rich_01", "Items.FormalShirt_02_rich_02", "Items.FormalShirt_02_rich_03",
    "Items.Jacket_08_old_01",
    "Items.LooseShirt_02_basic_01", "Items.LooseShirt_02_basic_02", "Items.LooseShirt_02_old_01","Items.LooseShirt_02_old_02", "Items.LooseShirt_02_rich_01", "Items.LooseShirt_02_rich_02",
    "Items.TShirt_06_basic_01", "Items.TShirt_06_basic_02", "Items.TShirt_06_old_01", "Items.TShirt_06_old_02", "Items.TShirt_06_rich_01", "Items.TShirt_06_rich_02",
    "Items.Undershirt_02_basic_01", "Items.Undershirt_02_basic_02", "Items.Undershirt_02_rich_01", "Items.Undershirt_02_rich_02", "Items.Rockerboy_01_Set_TShirt",
    "Items.Shirt_03_basic_01", "Items.Shirt_03_basic_02", "Items.Shirt_03_basic_03", "Items.Shirt_03_old_01", "Items.Shirt_03_old_02", "Items.Shirt_03_old_03", "Items.Shirt_03_rich_01", "Items.Shirt_03_rich_02", "Items.Shirt_03_rich_03",
    "Items.Jacket_16_basic_01", "Items.Jacket_16_basic_02", "Items.Jacket_16_old_01", "Items.Jacket_16_old_02", "Items.Jacket_16_rich_01",
    "Items.TShirt_01_old_01", "Items.TShirt_01_old_02", "Items.TShirt_01_old_03", "Items.TShirt_01_rich_01", "Items.TShirt_01_rich_02", "Items.TShirt_01_rich_03", "Items.TShirt_01_basic_01", "Items.TShirt_01_basic_02", "Items.TShirt_01_basic_03",
    "Items.Pants_03_basic_01", "Items.Pants_03_basic_02", "Items.Pants_03_basic_03", "Items.Pants_03_old_01", "Items.Pants_03_old_02", "Items.Pants_03_old_03", "Items.Pants_03_rich_01", "Items.Pants_03_rich_02", "Items.Pants_03_rich_03", "Items.Solo_01_Set_Pants", "Items.Q001_Pants",
    "Items.Shorts_03_basic_01", "Items.Shorts_03_basic_02", "Items.Shorts_03_basic_03", "Items.Shorts_03_old_01", "Items.Shorts_03_rich_01",
    "Items.Shorts_02_basic_01", "Items.Shorts_02_basic_02", "Items.Shorts_02_old_01", "Items.Shorts_02_rich_01",
    "Items.Coat_02_basic_01", "Items.Coat_02_basic_02", "Items.Coat_02_old_01", "Items.Coat_02_old_02", "Items.Coat_02_old_03", "Items.Coat_02_old_04",
    "Items.Pants_01_basic_01", "Items.Pants_01_basic_02", "Items.Pants_01_basic_03", "Items.Pants_01_old_01", "Items.Pants_01_old_02", "Items.Pants_01_old_03", "Items.Pants_01_rich_01", "Items.Pants_01_rich_02", "Items.Pants_01_rich_03",
    "Items.Pants_09_basic_01", "Items.Pants_09_basic_02", "Items.Pants_09_old_01", "Items.Pants_09_old_02", "Items.Pants_09_old_03", "Items.Pants_09_rich_01", "Items.Pants_09_rich_02",
    "Items.Pants_05_rich_02",
    "Items.Pants_07_basic_01", "Items.Pants_07_basic_02", "Items.Pants_07_basic_03", "Items.Pants_07_old_01", "Items.Pants_07_old_02", "Items.Pants_07_old_03", "Items.Pants_07_rich_01", "Items.Pants_07_rich_02", "Items.Pants_07_rich_03",
    "Items.Shorts_04_old_01", "Items.Shorts_04_old_02", "Items.Shorts_04_old_03", "Items.Shorts_04_old_04"
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
    n"DressifyAtelier",
    "Dressify Store", 
    	aggregatedItems,
    	aggregatedPrices,
    r"base/xerduke/store/dressify_atelier_icon.inkatlas",
    n"slot_01",
    	aggregatedRarities
  );
}