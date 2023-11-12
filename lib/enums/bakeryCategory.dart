enum BakeryCategory {
  samsaMeat,
  samsaChicken,
  samsaChickenCheese,
  samsaChickenMushroom,
  samsaPotato,
  piePotatoMushroom,
  piePotato,
  pieCabbage,
  pieEgg,
  kurnik,
  sosiskaVTeste,
  sosiskaVTesteKartoshka,
  pizza,
  oromo,
  manty,
  sochnik
}

extension BakeryCategoryExtension on BakeryCategory {
  String get stringValue {
    switch (this) {
      case BakeryCategory.samsaMeat:
        return "Самса с мясом";
      case BakeryCategory.samsaChicken:
        return "Самса с курицей";
      case BakeryCategory.samsaChickenCheese:
        return "Самса с курицей и сыром";
      case BakeryCategory.samsaChickenMushroom:
        return "Самса с курицей и грибами";
      case BakeryCategory.samsaPotato:
        return "Самса с картошкой";
      case BakeryCategory.piePotatoMushroom:
        return "Пирожок картошка с грибами";
      case BakeryCategory.piePotato:
        return "Пирожок с грибами";
      case BakeryCategory.pieCabbage:
        return "Пирожок с капустой";
      case BakeryCategory.pieEgg:
        return "Пирожок с яйцом";
      case BakeryCategory.kurnik:
        return "Курник";
      case BakeryCategory.sosiskaVTeste:
        return "Сосиска в тесте";
      case BakeryCategory.sosiskaVTesteKartoshka:
        return "Сосиска в тесте с картошкой";
      case BakeryCategory.pizza:
        return "Пицца";
      case BakeryCategory.oromo:
        return "Оромо";
      case BakeryCategory.manty:
        return "Манты (1 шт.)";
      case BakeryCategory.sochnik:
        return "Сочник";
    }
  }
}