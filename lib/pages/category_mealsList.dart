import 'package:deli_food/data/dummy_meals.dart';
import 'package:deli_food/models/category.dart';
import 'package:flutter/material.dart';

class CategoryMealsList extends StatelessWidget {
  void backToHome(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/', arguments: {});
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
        child: ListView(
            children: DUMMY_MEALS
                .where((meal) => meal.categories.contains(category.id))
                .map((meal) => ListTile(
                      minVerticalPadding: 20,
                      focusColor: Theme.of(context).primaryColorLight,
                      selectedTileColor: Theme.of(context).primaryColorLight,
                      leading: Icon(Icons.food_bank_outlined),
                      title: Text(meal.title),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border_outlined),
                      ),
                    ))
                .toList()),
      ),
    );
  }
}
