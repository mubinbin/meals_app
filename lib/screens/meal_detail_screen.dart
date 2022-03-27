// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);

  //TODO: work on this page format and display info

  @override
  Widget build(BuildContext context) {
    final String mealId = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: const Text("placeholder")),
      body: Center(child: Text("meal has id: $mealId")),
    );
  }
}
