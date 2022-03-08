import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String itemTitle;
  final String itemId;
  final Color catColor;

  const CategoryItem({
    Key? key,
    required this.itemId,
    required this.itemTitle,
    required this.catColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: catColor,
      child: Column(
        children: <Widget>[
          Text(itemTitle),
          Text(itemId),
        ],
      ),
    );
  }
}
