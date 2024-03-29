import 'package:flutter/material.dart';
import 'screens/tab_screen.dart';
import './screens/error_404.dart';
import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/filters_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      debugShowCheckedModeBanner: false,
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
              ),
            ),
      ),

      // home: MyHomePage(title: 'DeliMeals'),
      // instead of using home, we can use the routes default
      // home: CategoriesScreen(),

      initialRoute: '/', // for initial route
      routes: {
        '/': (ctx) => TabScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
      //onGenerateRoute: (settings) {
      //print(settings.arguments);
      // need to search more on what really onGenerateRoute is
      // but based on my research. this function is rarely used in real life applications
      //},
      onUnknownRoute: (settings) {
        // MORE LIKE ERROR 404 PAGE
        return MaterialPageRoute(
          builder: (ctx) => Error404(),
        );
      },
    );
  }
}

// watch 16. Navigating to the Meal Detail
// temporarily pause the development
// 26. Popping Pages & Passing Data Back
