import 'package:cachier/enums/bakeryCategory.dart';
import 'package:flutter/material.dart';

class BakeryButton extends StatelessWidget {
  final Color backgroundColor = Colors.grey;
  final Color textColor = Colors.black;
  final BakeryCategory product;

  const BakeryButton({
    Key? key,
    required this.product,
  }) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor: backgroundColor,
          side: BorderSide(width: 5, color: textColor),
        ),
        onPressed: () {
        },
        child: Text(
          product.stringValue,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}