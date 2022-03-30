import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';

void main() {
  testWidgets('meal detail screen render', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        onGenerateRoute: (_) => MaterialPageRoute(
          settings: const RouteSettings(arguments: "m1"),
          builder: (BuildContext context) => const MealDetailScreen(),
        ),
      ),
    );

    final Image image = find.byType(Image).evaluate().first.widget as Image;
    assert(image.image is AssetImage);
    assert(image.image is! NetworkImage);
    expect(find.text("Ingredients"), findsOneWidget);
  });
}
