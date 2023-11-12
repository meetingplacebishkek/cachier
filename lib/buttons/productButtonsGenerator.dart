import 'package:cachier/buttons/BakeryButtonsGenerator.dart';
import 'package:cachier/enums/productCategory.dart';
import 'package:flutter/material.dart';

import 'categoryButton.dart';

class ProductButtonsGenerator {

  Widget buildButtonsForCategory(ProductCategory category) {
    switch (category) {
      case ProductCategory.bakery:
        return const BakeryButtonGenerator();
      case ProductCategory.drinks:
        return CategoryButton(category: ProductCategory.drinks, updateSelectedCategory: updateSelectedCategory);
      case ProductCategory.combos:
        return CategoryButton(category: ProductCategory.combos, updateSelectedCategory: updateSelectedCategory);
    }
  }



  updateSelectedCategory(ProductCategory? p1) {
  }
}