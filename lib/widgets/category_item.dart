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

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      "/category-meal",
      arguments: {"id": itemId, "title": itemTitle},
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: <Color>[catColor.withOpacity(0.5), catColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        // borderRadius: BorderRadiusGeometry(),),),),
        child: Text(
          itemTitle,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
