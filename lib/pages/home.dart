import 'package:cachier/buttons/productButtonsGenerator.dart';
import 'package:flutter/material.dart';
import 'package:cachier/enums/productCategory.dart';
import 'package:cachier/buttons/categoryButton.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ProductCategory? selectedCategory = ProductCategory.bakery;

  void updateSelectedCategory(ProductCategory? category){
    setState(() {
      selectedCategory = category;
      print(selectedCategory);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget middleRowButtons = ProductButtonsGenerator().buildButtonsForCategory(selectedCategory!);

    return Scaffold(
        body: SafeArea(
      child: Row(children: <Widget>[
        Expanded(
            flex: 1,
            child: Container(
                color: Colors.black,
                child: Column(children: [
                  CategoryButton(category: ProductCategory.bakery, updateSelectedCategory: updateSelectedCategory),
                  CategoryButton(category: ProductCategory.drinks, updateSelectedCategory: updateSelectedCategory),
                  CategoryButton(category: ProductCategory.combos, updateSelectedCategory: updateSelectedCategory)
                ]))),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.green,
            child: middleRowButtons,
            ),
          ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.yellow,
          ),
        )
      ]),
    ));
  }
}


