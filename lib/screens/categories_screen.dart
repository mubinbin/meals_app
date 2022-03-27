import 'package:flutter/material.dart';

import '../data/test_categories.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: TEST_CATEGORIES.length,
      itemBuilder: (BuildContext ctx, int index) => CategoryItem(
          categoryId: TEST_CATEGORIES[index].id,
          categoryTitle: TEST_CATEGORIES[index].title,
          categoryColor: TEST_CATEGORIES[index].color),
    );
  }
}
