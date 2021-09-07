import 'package:deli_food/models/meal.dart';
import 'package:deli_food/pages/meal_page.dart';
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final Meal meal;
  MealItem(this.meal);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
             Navigator.of(context).pushNamed(MealPage.routeName,arguments: {
               'meal':meal
               });
      },
      child:Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)
                  ),
                  child: Image.network(meal.imageUrl,
             //     height: 250,
                  width: double.infinity,
                  fit: BoxFit.fill,),
                ),
                Container(
                    width: 300,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(10, 10, 10, 0.6),
                      
                    ),
                    margin: EdgeInsets.only(top: 140,bottom: 20,left: 100,right: 2),
                  child: Text(meal.title,style: TextStyle(color: Colors.white,
                  fontSize: 25),textAlign: TextAlign.center,)
                ,)
              ],),
              Row(
                children: [
                  Container(child: Row(mainAxisAlignment: MainAxisAlignment.center,children:[Text(meal.ingredients.length.toString()),SizedBox(width: 10,), Icon(Icons.shop)],),width: 100,margin: EdgeInsets.all(15),),
                  Expanded(child:  Text('')),
                  Container(child: Row(mainAxisAlignment: MainAxisAlignment.center,children:[Text(meal.duration.toString()), Icon(Icons.lock_clock)],),width: 100, margin: EdgeInsets.all(15),),
                ]
              ,)
            ],
          ),
        ),
    );
    
  }
}