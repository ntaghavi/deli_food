import 'package:deli_food/pages/category_page.dart';
import 'package:deli_food/pages/favorites_page.dart';
import 'package:deli_food/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 110,
            title: Text('Meals'),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Category',
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Favorites',
              ),
            ]),
          ),
          drawer: Drawer(
            child: DrawerWidget(),
          ),
          body: TabBarView(children: [
              CategoryPage(),
              FavoritesPage()
          ]),
        ));
  }
}
