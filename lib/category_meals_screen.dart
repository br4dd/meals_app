import 'package:flutter/material.dart';

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

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        backgroundColor: categoryColor,
      ),
      body: Center(
        child: Text(categoryId),
      ),
    );
  }
}
