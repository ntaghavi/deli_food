import 'package:deli_food/data/dummy_data.dart';
import 'package:deli_food/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);
  static const routeName = '/categories';

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        width: double.infinity,
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
               childAspectRatio: 3 / 2,
               crossAxisSpacing: 20,
               mainAxisSpacing: 20,),
          children: DUMMY_CATEGORIES.map((e) => CategoryWidget(e)).toList(),
        ),
    );
  }
}
