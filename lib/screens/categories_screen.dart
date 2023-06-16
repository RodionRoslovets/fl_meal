import 'package:flutter/material.dart';
import 'package:third/widgets/category_item.dart';

import '../data.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/';

  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal app'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: CATEGORIES.map((e) => CategoryItem(e)).toList(),
      ),
    );
  }
}
