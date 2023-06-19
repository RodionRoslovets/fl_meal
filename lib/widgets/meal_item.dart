import 'package:flutter/material.dart';
import 'package:third/models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;
  const MealItem({super.key, required this.meal});

  void selectMeal() {}

  String get complexity {
    switch (meal.complexity) {
      case Complexity.simple:
        return 'Simple';
      case Complexity.challenging:
        return 'Challengin';
      case Complexity.hard:
        return 'Hard';
      default:
        return 'Unknown';
    }
  }

  String get affordability {
    switch (meal.affordability) {
      case Affordability.affordable:
        return 'Affordable';
      case Affordability.pricey:
        return 'Pricey';
      case Affordability.luxurious:
        return 'Expensive';
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          selectMeal();
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 4,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Image.network(
                      meal.imgUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      width: 300,
                      color: Colors.black54,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Text(meal.title,
                          style: const TextStyle(
                              fontSize: 26, color: Colors.white),
                          softWrap: true,
                          overflow: TextOverflow.fade),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.schedule),
                          const SizedBox(
                            width: 6,
                          ),
                          Text("${meal.duration} min")
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.work),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(complexity)
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.attach_money),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(affordability)
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
