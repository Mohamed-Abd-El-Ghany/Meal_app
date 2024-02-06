import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/widgets/category_grid_item.dart';

import '../data/dummy_data.dart';
import '../models/meal.dart';

class CategriesScreen extends StatelessWidget {
  const CategriesScreen({
    super.key,
    required this.availableMeals,
  });

  final List<Meal> availableMeals;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 13,
        right: 13,
      ),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 3 / 2,
        ),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              availableMeals: availableMeals,
            ),
        ],
      ),
    );
  }
}
