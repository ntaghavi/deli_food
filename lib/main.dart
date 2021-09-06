import 'package:deli_food/pages/category_mealsList.dart';
import 'package:deli_food/pages/category_page.dart';
import 'package:deli_food/widgets/category_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliFood',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(title: TextStyle(fontFamily: 'RobotoCondensed',fontSize: 24)),
        accentColor: Colors.amber[50]
      ),
      home: CategoryPage(),
      routes: {
        CategoryWidget.routeName : (ctx) => CategoryMealsList(),
      },
    );
  }
}

