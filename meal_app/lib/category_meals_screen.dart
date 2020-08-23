import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('recipes'),
      ),
      body: Center(
        child: Text(
          'recipes for category',
        ),
      ),
    );
  }
}
