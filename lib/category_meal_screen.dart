import 'package:flutter/material.dart';

class CatMealScreen extends StatelessWidget {
  const CatMealScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    String itemTitle = args["title"] as String;
    String itemId = args["id"] as String;

    return Scaffold(
      appBar: AppBar(title: Text(itemTitle)),
      // TODO: add more details of this page
      body: Text(itemId),
    );
  }
}
