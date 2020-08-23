import 'package:flutter/material.dart';

import 'models/category.dart';


class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,Category>;
    final categoryTitle = routeArgs['category'].title;

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text(
          'recipes for category',
        ),
      ),
    );
  }
}
