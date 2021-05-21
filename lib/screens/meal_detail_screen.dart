import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    // final mealId = ModalRoute.of(context).settings.arguments as String;
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final mealId = routeArgs['id'];
    final mealTitle = routeArgs['title'];
    final mealColor = routeArgs['color'];
    return Scaffold(
      appBar: AppBar(
        title: Text(mealTitle),
        backgroundColor: mealColor,
      ),
      body: Center(
        child: Text(
          'The meal --- $mealId',
        ),
      ),
    );
  }
}
