import 'package:deli_food/data/dummy_meals.dart';
import 'package:deli_food/models/category.dart';
import 'package:deli_food/pages/meal_page.dart';
import 'package:deli_food/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class MealListWidget extends StatelessWidget {
  //static const routeName = 'categories/mealList';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;

    final Category category = routeArgs['category'] as Category;
    return ListView(
            children: DUMMY_MEALS
                .where((meal) => meal.categories.contains(category.id))
                .map((meal) => MealItem(meal))
                .toList());
  }
}