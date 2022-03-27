import 'package:flutter/material.dart';

import './screens/meal_detail_screen.dart';
import './screens/category_meal_screen.dart';
import './screens/categories_screen.dart';
import './screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            bodyText2: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            headline6: const TextStyle(
                fontFamily: "RobotoCondensed",
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
      initialRoute: "/home", //default is "/"
      routes: {
        "/home": (BuildContext ctx) => const TabsScreen(),
        "/category-meal": (BuildContext ctx) => const CatMealScreen(),
        "/meal-detail": (BuildContext ctx) => const MealDetailScreen(),
      },
      // TODO: need to setup a unknow route page
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (BuildContext cxt) => const CategoriesScreen(),
      ),
    );
  }
}
