import 'package:flutter/material.dart';

import './dummy_data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeal'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        // designing gridview
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //200 px per item
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        // DUMMY_CATEGORIES().map().toList()
        children: DUMMY_CATEGORIES
            .map((categoryData) => CategoryItem(
                  // temporary variable to pass it on CategoryItem class
                  categoryData.id,
                  categoryData.title,
                  categoryData.color,
                ))
            .toList(),
      ),
    );
  }
}
