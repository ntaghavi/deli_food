import 'package:deli_food/data/dummy_meals.dart';
import 'package:deli_food/pages/404.dart';
import 'package:deli_food/pages/category_mealsList.dart';
import 'package:deli_food/pages/category_page.dart';
import 'package:deli_food/pages/favorites_page.dart';
import 'package:deli_food/pages/filters_page.dart';
import 'package:deli_food/pages/meal_page.dart';
import 'package:deli_food/pages/tabs_page.dart';
import 'package:flutter/material.dart';

import 'models/meal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
  
}

class _MyAppState extends State<MyApp> {
  Map<String,bool> filters = {
    'gluten-free': false,
    'vegeterian': false,
    'vegan': false,
    'lactose-free':false
  };
 
   List<Meal> _availableMeals = DUMMY_MEALS;
  void _setFilters(Map<String,bool> filterData){
    setState(() {
        filters = filterData;
        _availableMeals= DUMMY_MEALS.where((meal) {
        print(filters);
        if (filters['gluten-free'] as bool && !meal.isGlutenFree) {
          return false;
        }
        if (filters['lactose-free'] as bool && !meal.isLactoseFree) {
          return false;
        }
        if (filters['vegan'] as bool && !meal.isVegan) {
          return false;
        }
        if (filters['vegeterian'] as bool && !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliFood',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(title: TextStyle(fontFamily: 'RobotoCondensed',fontSize: 24)),
        accentColor: Colors.amber[200]
      ),
     // home: TabScreen(),
      routes: {
       // CategoryWidget.routeName : (ctx) => CategoryMealsList(),
       '/':(ctx) => TabScreen(),
        CategoryPage.routeName: (ctx)=>CategoryMealsList(_availableMeals),
         MealPage.routeName: (ctx) => MealPage(),
         FiltersPage.routeName: (ctx) => FiltersPage(_setFilters),
         FavoritesPage.routeName: (ctx) => FavoritesPage(),

      },onUnknownRoute: (RouteSettings settings) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) =>
            Scaffold(body: FourOFour()),
      );
    },
  );
  
}
}


