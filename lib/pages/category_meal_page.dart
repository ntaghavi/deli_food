import 'package:deli_food/models/category.dart';
import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  final Category category;
  CategoryMeals(this.category);

  @override
  Widget build(BuildContext context) {
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