import 'package:flutter/material.dart';
import './categories_screen.dart';
import './favorite_screen.dart';

//statefull widget for TabBar
class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    // for the hamburger
    // length: 2 . for categories and for favorite
    return DefaultTabController(
      // initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          // TapBar is used for DefaultTabController
          bottom: TabBar(
            // indicatorColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorites',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          CategoriesScreen(),
          FavoriteScreen(),
        ]),
      ),
    );
  }
}
