import 'package:flutter/material.dart';
import 'package:cachier/enums/productCategory.dart';

class CategoryButton extends StatefulWidget {
  final Color backgroundColor = Colors.grey;
  final Color textColor = Colors.black;
  final ProductCategory category;
  final Function(ProductCategory?) updateSelectedCategory;

  CategoryButton({
    Key? key,
    required this.category,
    required this.updateSelectedCategory,
  }) : super(key: key);


  @override
  _CategoryButtonState createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          backgroundColor: widget.backgroundColor,
          side: BorderSide(width: 5, color: widget.textColor),
        ),
        onPressed: () {
          setState(() {
            widget.updateSelectedCategory(widget.category);
          });
        },
        child: Text(
          widget.category.stringValue,
          style: TextStyle(color: widget.textColor),
        ),
      ),
    );
  }
}