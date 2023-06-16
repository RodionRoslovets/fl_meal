import 'package:flutter/material.dart';
import './screens/category_meals.dart';
import './screens/categories_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          CategoriesScreen.routeName: (ctx) => const CategoriesScreen(),
          CategoryMeals.routeName: (ctx) => const CategoryMeals()
        },
        theme: ThemeData(
            colorScheme: ThemeData.light().colorScheme.copyWith(
                  secondary: Colors.amber,
                  primary: Colors.pink,
                ),
            textTheme: ThemeData.light().textTheme.copyWith(
                bodyMedium: const TextStyle(
                    fontFamily: "TT", color: Color.fromRGBO(20, 51, 51, 1)),
                bodySmall: const TextStyle(
                    fontFamily: "TT", color: Color.fromRGBO(20, 51, 51, 1)),
                titleLarge:
                    const TextStyle(fontFamily: "Stolzl", fontSize: 20)),
            // textTheme: Theme.of(context).textTheme.,
            canvasColor: const Color.fromRGBO(255, 254, 229, 1)));
  }
}
