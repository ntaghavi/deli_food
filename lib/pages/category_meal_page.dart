import 'package:deli_food/models/category.dart';
import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String,Object>;
    final Category category = routeArgs['category'] as Category;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){},),
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Text('${category.title} Recipes'),
      ),
      body: Container(
        child: Text('Category meal'),
      ),
    );
  }
}