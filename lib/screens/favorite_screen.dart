import 'package:flutter/material.dart';
import 'package:meals/components/meal_item.dart';

import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  List<Meal> _favoriteMeals = [];

  FavoriteScreen(this._favoriteMeals, {super.key});

  @override
  Widget build(BuildContext context) {
    if (_favoriteMeals.isEmpty) {
      return const Center(
        child: Text('Nenhuma refeição foi marcada como favorita!'),
      );
    } else {
      return ListView.builder(
        itemCount: _favoriteMeals.length,
        itemBuilder: (context, index) {
          return MealItem(_favoriteMeals[index]);
        },
      );
    }
  }
}
