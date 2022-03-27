import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String categoryTitle;
  final String categoryId;
  final Color categoryColor;

  const CategoryItem({
    Key? key,
    required this.categoryId,
    required this.categoryTitle,
    required this.categoryColor,
  }) : super(key: key);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      "/category-meal",
      arguments: {"id": categoryId, "title": categoryTitle},
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
            colors: <Color>[categoryColor.withOpacity(0.5), categoryColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        // borderRadius: BorderRadiusGeometry(),),),),
        child: Text(
          categoryTitle,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
