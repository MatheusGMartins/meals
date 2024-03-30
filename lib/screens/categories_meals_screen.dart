import 'package:flutter/material.dart';
import 'package:meals/components/adaptative_app_bar.dart';
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final Category category;

  const CategoriesMealsScreen(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdaptativeAppBar(category.title),
      body: Center(
        child: Text('Receitas por categoria. ${category.id}'),
      ),
    );
  }
}
