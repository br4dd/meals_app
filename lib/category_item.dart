import 'package:flutter/material.dart';
import './category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  // to navigate certain item
  void selectCategory(BuildContext ctx) {
    // use pushNamed() instead of push()
    Navigator.of(ctx).pushNamed(
      // /category-meals is on the main file routes
      CategoryMealsScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
        'color': color,
      },
      // passing it to category_meals_screen
    );
  }

  @override
  Widget build(BuildContext context) {
    BorderRadius theBorder = BorderRadius.circular(15);

    // add inkwell to make a tappable container / onTap: () {}
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: theBorder,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          // to copy the global styling
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          // make gradient color
          gradient: LinearGradient(
            colors: [
              color.withOpacity(.5),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: theBorder,
        ),
      ),
    );
  }
}
