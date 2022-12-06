import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/meal_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final catTitle = routeArgs['title'];
    final catId = routeArgs['id'];
    final categoryMeal = DUMMY_MEALS.where((meal){
      return meal.categories.contains(catId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title:  Text(catTitle!),
      ),
      body: ListView.builder(itemBuilder: (ctx, index) {
        return MealCard(
            id: categoryMeal[index].id,
            title: categoryMeal[index].title,
            imageUrl: categoryMeal[index].imageUrl,
            duration: categoryMeal[index].duration,
            complexity: categoryMeal[index].complexity,
            affordability: categoryMeal[index].affordability
        );
      },
      itemCount: categoryMeal.length,
      ),
    );
  }
}
