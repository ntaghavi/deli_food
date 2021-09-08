import 'package:deli_food/models/meal.dart';
import 'package:flutter/material.dart';

class Receipe extends StatelessWidget {
  final Meal meal;
  Receipe(this.meal);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            'Ingredients',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            height: 110,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: meal.ingredients
                    .map(
                      (e) => Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        margin: EdgeInsets.all(2),
                        padding: EdgeInsets.all(3),
                        child: Text(
                          '$e',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Receipe',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 190,
              child: SingleChildScrollView(
                child: Column(
                  children: meal.steps
                      .map(
                        (s) => Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(5)),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(3),
                          child: Text(
                            s,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              )),
        ],
      ),
    );
  }
}
