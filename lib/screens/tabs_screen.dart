import 'package:flutter/material.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/favorite_screen.dart';
import '../components/main_drawer.dart';
import '../models/meal.dart';

class TabsScreen extends StatefulWidget {
  List<Meal> _favoriteMeals = [];

  TabsScreen(this._favoriteMeals, {super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  List<Map<String, Object>> _screens = [];

  @override
  void initState() {
    super.initState();

    _screens = [
      {
        'title': 'Lista de Categorias',
        'screen': const CategoriesScreen(),
      },
      {
        'title': 'Meus Favoritos',
        'screen': FavoriteScreen(widget._favoriteMeals)
      },
    ];
  }

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Text(
            _screens[_selectedScreenIndex]['title'] as String,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      drawer: MainDrawer(),
      body: _screens[_selectedScreenIndex]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: themeData.colorScheme.secondary,
        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType.shifting,
        onTap: _selectScreen,
        backgroundColor: themeData.colorScheme.primary,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.category),
            label: 'Categorias',
            backgroundColor: themeData.colorScheme.primary,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.star),
            label: 'Favoritos',
            backgroundColor: themeData.colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
