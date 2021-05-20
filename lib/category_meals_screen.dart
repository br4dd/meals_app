import 'package:flutter/material.dart';
import './dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  // for safer routes
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    // getting the arguments of the pushNamed navigator
    // Map<String, String>
    // String keys and String values

    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;

    // we used Map<String, dynamic>
    // for dynamic values like Color, widgets, etc

    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categoryColor = routeArgs['color'];

    // meal as temporary variable
    // checks if the meal categories contains current categoryId

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        backgroundColor: categoryColor,
      ),

      // for dynamic ListView
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          // to access the meal from different category
          return Text(categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
