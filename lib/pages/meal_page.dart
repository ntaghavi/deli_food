import 'package:deli_food/models/meal.dart';
import 'package:deli_food/widgets/receipe.dart';
import 'package:flutter/material.dart';
List<Meal> favorites = [];
class MealPage extends StatefulWidget {
  static const routeName = '/meal';

  @override
  _MealPageState createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  void backToMealList(BuildContext context) {
    Navigator.of(context).pop();
  }

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

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    final Meal meal = routeArgs['meal'] as Meal;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => backToMealList(context),
        ),
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Text('${meal.title} Recipes'),
      ),
      body: Container(
          child: ListView(
        children: [
          Stack(
            children: [
              Image.network(meal.imageUrl),
              Container(
                margin: EdgeInsets.only(top: 200, left: 120),
                width: 300,
                height: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(10, 10, 10, 0.6),
                ),
                child: Text(
                  'Ultimate Receipe',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ],
          ),
          Receipe(meal),
        ],
      )),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
           toggleFav(meal);
        });
      },child: setIcon(meal),),
    );
  }
}
