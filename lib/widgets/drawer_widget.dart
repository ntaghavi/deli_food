import 'package:deli_food/pages/filters_page.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  Widget listTileBuilder(Icon icon, String title, Function onTapFunction){
    return  ListTile(
            onTap: () => onTapFunction(),
            leading: icon,
            title: Text(
              title,
              style: TextStyle(fontFamily: 'Raleway', fontSize: 20),
            ),
          );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 140,
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.only(bottom: 30),
            color: Theme.of(context).primaryColor,
            alignment: Alignment.center,
            child: Text(
              'Cook it Up!!!',
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway'),
            ),
          ),
          listTileBuilder(Icon(
              Icons.dinner_dining_rounded,
              size: 28,
            ), 'Meal',
             (){
               Navigator.of(context).pushReplacementNamed('/');
             }),
         listTileBuilder(Icon(
              Icons.settings,
              size: 28,
            ), 'Filters',
            (){
              Navigator.of(context).pushReplacementNamed(FiltersPage.routeName);
            },
         ),
        ],
      ),
    );
  }
}
