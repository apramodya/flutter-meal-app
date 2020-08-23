import 'package:flutter/material.dart';

import './dummy_data.dart';
import 'models/category.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Category>;
    final categoryTitle = routeArgs['category'].title;
    final categoryId = routeArgs['category'].id;
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text('${categoryMeals[index].title}');
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
