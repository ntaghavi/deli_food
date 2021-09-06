import 'package:deli_food/models/category.dart';
import 'package:deli_food/pages/category_meal_page.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;
  CategoryWidget(this.category);
  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return CategoryMeals(category);
    }));
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10),
      onTap: () => selectCategory(context),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [category.color.withOpacity(0.7), category.color,],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
