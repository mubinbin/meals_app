import 'package:flutter/material.dart';

import './data/test_categories.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DeliMeal")),
      body: GridView.builder(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: TEST_CATEGORIES.length,
        itemBuilder: (BuildContext ctx, int index) => CategoryItem(
            itemId: TEST_CATEGORIES[index].id,
            itemTitle: TEST_CATEGORIES[index].title,
            catColor: TEST_CATEGORIES[index].color),
      ),
    );
  }
}
