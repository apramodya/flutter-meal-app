import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isNotEmpty) {
      return Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(favoriteMeals[index]);
          },
          itemCount: favoriteMeals.length,
        ),
      );
    } else {
      return Center(
        child: Text('No favorites yet'),
      );
    }
  }
}
