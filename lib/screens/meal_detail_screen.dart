import 'package:flutter/material.dart';

import '../data/test_meals.dart';
import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String mealId = ModalRoute.of(context)!.settings.arguments as String;

    final Meal selectedMeal =
        TEST_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(title: Text(selectedMeal.title)),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            // TODO: finish this page
            child: Text(
              "Ingredients",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
      ),
    );
  }
}
