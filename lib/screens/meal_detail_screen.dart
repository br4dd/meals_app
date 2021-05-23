import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  //to reuse the widget
  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        //style from the main dart file
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  // now we can reuse Widget by using Widget class
  // put what input should be dynamic
  // like this, we used child on Container
  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 200,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    // final mealId = ModalRoute.of(context).settings.arguments as String;
    // final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    // USE firstWhere function instead of passing out the variables from parent class
    // this comes from meal_item
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final mealId = routeArgs['id'];
    final mealColor = routeArgs['color'];
    // checks if the meal id on dummy meals matches on the current mealId here
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
        backgroundColor: mealColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'Ingredients'),
            // flutter throws an error if using ListView inside the column
            // because column uses finite height while the ListView is not
            // so we must set fixed height for ListView using Container
            buildContainer(
              // ListView as builder
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  // color: Theme.of(context).accentColor,
                  color: mealColor,
                  // to iterate the list using itemBuilder
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    // output the ingredients
                    child: Text(selectedMeal.ingredients[index]),
                  ),
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            buildSectionTitle(context, 'Steps'),
            buildContainer(
              ListView.builder(
                // LIST TILE IS LIKE A ID CARD HORIZONTALLY
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('# ${(index + 1)}'),
                      ),
                      title: Text(selectedMeal.steps[index]),
                    ),
                    // inserting Column to use the Divider()
                    Divider(
                      color: mealColor,
                      thickness: 3,
                    ),
                  ],
                ),
                itemCount: selectedMeal.steps.length,
              ),
            ),
          ],
        ),
      ),
      // deleting the meal with the use of pop on Navigation
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: () {
          Navigator.of(context).pop(mealId);
        },
      ),
    );
  }
}
