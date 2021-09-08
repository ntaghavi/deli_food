import 'package:deli_food/models/meal.dart';
import 'package:deli_food/pages/meal_page.dart';
import 'package:deli_food/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  //final Function favsFunction;
 // FavoritesPage(this.favsFunction);
  static const routeName= '/favorites';

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
   void toggleFav(Meal meal){
    if (favorites.contains(meal)) {
      favorites.remove(meal);
    }else{
      favorites.add(meal);
    }
  }

  Icon setIcon(Meal meal){
    Icon res;
    res = Icon(Icons.favorite_outline);
    setState(() {
      if(favorites.contains(meal)){
      res =  Icon(Icons.favorite);
    }else{
      res =  Icon(Icons.favorite_outline);
    }
    });
     return res;
  }
  void navMealDetail(BuildContext context,Meal meal){
    Navigator.of(context).pushNamed(MealPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:ListView(
        children: favorites.map((f) =>  MealItem(f)).toList(),
      
      ),
    );
  }
}
