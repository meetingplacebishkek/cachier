enum ProductCategory {
  bakery,
  drinks,
  combos,
}

extension ProductCategoryExtension on ProductCategory {
  String get stringValue {
    switch (this) {
      case ProductCategory.bakery:
        return 'Выпечка';
      case ProductCategory.drinks:
        return 'Напитки';
      case ProductCategory.combos:
        return 'Комбо';
    }
  }
}