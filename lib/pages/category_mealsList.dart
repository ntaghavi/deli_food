import 'package:deli_food/models/category.dart';
import 'package:deli_food/models/meal.dart';
import 'package:deli_food/widgets/mealList_widget.dart';
import 'package:flutter/material.dart';

class CategoryMealsList extends StatefulWidget {
    static const routeName = '/categories/mealList';
     final List<Meal> avilableMeals;
    CategoryMealsList(this.avilableMeals);

  @override
  _CategoryMealsListState createState() => _CategoryMealsListState();
}

class _CategoryMealsListState extends State<CategoryMealsList> {
  void backToHome(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/', arguments: {
    });
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    final Category category = routeArgs['category'] as Category;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => backToHome(context),
        ),
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Text('${category.title} Recipes'),
      ),
      body: Container(
        child: MealListWidget(widget.avilableMeals),
      ),
    );
  }
}
