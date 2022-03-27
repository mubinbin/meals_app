// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);

  //TODO: work on this page format and display info

  @override
  Widget build(BuildContext context) {
    final Map<String, String> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    String mealId = args["id"] as String;
    String mealTitle = args["title"] as String;

    return Scaffold(
      appBar: AppBar(title: Text(mealTitle)),
      body: Center(child: Text("$mealTitle has id: $mealId")),
    );
  }
}
