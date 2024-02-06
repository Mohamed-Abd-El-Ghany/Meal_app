import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/widgets/category_grid_item.dart';

import '../data/dummy_data.dart';
import '../models/meal.dart';

class CategriesScreen extends StatefulWidget {
  const CategriesScreen({
    super.key,
    required this.availableMeals,
  });

  final List<Meal> availableMeals;

  @override
  State<CategriesScreen> createState() => _CategriesScreenState();
}

class _CategriesScreenState extends State<CategriesScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
      lowerBound: 0,
      upperBound: 1,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
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
              availableMeals: widget.availableMeals,
            ),
        ],
      ),
      builder: (context, child) => Padding(
        padding: EdgeInsets.only(
          left: 13,
          right: 13,
          top: 200 - _controller.value*200
        ),
        child: child,
      ),
    );
  }
}
