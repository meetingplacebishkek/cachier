import 'package:cachier/buttons/bakeryButtons.dart';
import 'package:cachier/enums/bakeryCategory.dart';
import 'package:flutter/material.dart';

class BakeryButtonGenerator extends StatelessWidget {
  const BakeryButtonGenerator({super.key});


  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Column(
          children: [
            ...BakeryCategory.values
                .map((e) => BakeryButton(product: e))
                .toList(),
          ],
        ));
  }
}
