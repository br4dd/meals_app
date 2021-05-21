import 'package:flutter/material.dart';
import 'screens/category_meals_screen.dart';
import 'screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        // adding styling to the theme
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
              fontSize: 20,
              // imported from assets/fonts/ folder
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: MyHomePage(title: 'DeliMeals'),
      // instead of using home, we can use the routes default
      // home: CategoriesScreen(),

      initialRoute: '/', // for initial route
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
      },
    );
  }
}

// todo rewatch 13. Selecting Meals for a Chosen Category on 4 mins
