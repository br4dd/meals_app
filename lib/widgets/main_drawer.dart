import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          buildListTile(
            'Meals',
            Icons.restaurant,
          ),
          buildListTile(
            'Filters',
            Icons.filter,
          ),
        ],
      ),
    );
  }
}

// return Drawer(
//   child: Column(
//     children: [
//       Container(
//         height: 120,
//         width: double.infinity,
//         padding: EdgeInsets.all(20),
//         alignment: Alignment.centerLeft,
//         color: Theme.of(context).accentColor,
//         child: Text(
//           'Cooking up!',
//           style: TextStyle(
//             fontWeight: FontWeight.w900,
//             fontSize: 30,
//             color: Theme.of(context).primaryColor,
//           ),
//         ),
//       ),
//       SizedBox(
//         height: 20,
//       ),
//       buildListTile(
//         'Meals',
//         Icons.restaurant,
//       ),
//       buildListTile(
//         'Filters',
//         Icons.filter,
//       ),
//     ],
//   ),
// );
