import 'package:flutter/material.dart';

import '../screens/category_meals.dart';
import '../models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category cat;
  const CategoryItem(this.cat, {super.key});

  void selectCategory(BuildContext ctx, Category cat) {
    Navigator.of(ctx).pushNamed(CategoryMeals.routeName,
        arguments: {'title': cat.title, 'id': cat.id});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context, cat),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [cat.color.withOpacity(0.7), cat.color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          cat.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
