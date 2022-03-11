import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../data/test_meals.dart';
import '../models/meal.dart';

class CatMealScreen extends StatelessWidget {
  
  const CatMealScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Map<String, String> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    String itemTitle = args["title"] as String;
    String itemId = args["id"] as String;
    final List<Meal> mockMealsList =
        TEST_MEALS.where((meal) => meal.categories.contains(itemId)).toList();

    return Scaffold(
      appBar: AppBar(title: Text(itemTitle)),
      body: ListView.builder(
        itemCount: mockMealsList.length,
        itemBuilder: (BuildContext ctx, int index) => MealItem(
          affordability: mockMealsList[index].affordability,
          complexity: mockMealsList[index].complexity,
          duration: mockMealsList[index].duration,
          imageUrl: mockMealsList[index].imageUrl,
          title: mockMealsList[index].title,
        ),
      ),
    );
  }
}
