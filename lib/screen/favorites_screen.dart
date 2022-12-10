import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_card.dart';

class Favorites extends StatelessWidget {

  final List<Meal> favoriteMeal ;

  const Favorites(this.favoriteMeal, {super.key});

  @override
  Widget build(BuildContext context) {
    if(favoriteMeal.isEmpty){
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('Favorites'),
      ),
      body:
      const Center(
        child: Text(
          'No Favorites yet !!',
        ),
      ),
    );}
    else{
      return Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            title: const Text('Favorites'),
          ),
          body: ListView.builder(itemBuilder: (ctx, index) {
            return MealCard(
                id: favoriteMeal[index].id,
                title: favoriteMeal[index].title,
                imageUrl: favoriteMeal[index].imageUrl,
                duration: favoriteMeal[index].duration,
                complexity: favoriteMeal[index].complexity,
                affordability: favoriteMeal[index].affordability
            );
          },
            itemCount: favoriteMeal.length,
          ),
      );
    }
  }
}
