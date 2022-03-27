import 'package:flutter/material.dart';
import './categories_screen.dart';
import './favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = const [
    {"page": CategoriesScreen(), "title": "Meals"},
    {"page": FavoritesScreen(), "title": "My Favorite"},
  ];
  int _selectedIndex = 0;

  void _selectPage(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pages[_selectedIndex]["title"] as String)),
      body: _pages[_selectedIndex]["page"] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: ,
        currentIndex: _selectedIndex,
        onTap: _selectPage,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Favorite",
          ),
        ],
      ),
    );
  }
}
