import 'package:flutter/material.dart';
import 'package:meals/components/adaptative_app_bar.dart';
import 'package:meals/data/dummy_data.dart';
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryMeals = dummyMeals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AdaptativeAppBar(category.title),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return Text(categoryMeals[index].title);
        },
      ),
    );
  }
}
