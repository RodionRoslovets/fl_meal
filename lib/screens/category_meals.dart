import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../data.dart';

class CategoryMeals extends StatelessWidget {
  static const routeName = '/category';
  const CategoryMeals({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final title = routeArgs['title'];
    final id = routeArgs['id'];
    final meals = DUMMY_MEALS
        .where((element) => element.categories.contains(id))
        .toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(meal: meals[index]);
          },
          itemCount: meals.length,
        ));
  }
}
