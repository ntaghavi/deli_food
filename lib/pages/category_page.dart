import 'package:deli_food/data/dummy_data.dart';
import 'package:deli_food/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: Text('DeliFood'),
        leading: Icon(Icons.menu),
        backgroundColor: Theme.of(context).primaryColorDark,
        actions: [
          IconButton(
              hoverColor: Colors.blue,
              onPressed: () {},
              icon: Icon(
                Icons.favorite_rounded,
                color: Colors.pink,
              ),
              )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        width: double.infinity,
        color: Theme.of(context).accentColor,
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
               childAspectRatio: 3 / 2,
               crossAxisSpacing: 20,
               mainAxisSpacing: 20,),
          children: DUMMY_CATEGORIES.map((e) => CategoryWidget(e)).toList(),
        ),
      ),
    );
  }
}
