import 'package:flutter/material.dart';
import './screen/meal_screen.dart';
import './screen/tabs_screen.dart';
import './screen/category_screen.dart';
import './models/meal.dart';
import './dummy_data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    List<Meal> favoriteMeals = [];

    void toggleFavorites(String mealId) {
      final selectedMeal = favoriteMeals.indexWhere((element) => element.id == mealId);
      if(selectedMeal >= 0){
        setState(() {
          favoriteMeals.removeAt(selectedMeal);
        });
      }
      else{
        setState(() {
          favoriteMeals.add(DUMMY_MEALS.firstWhere((element) => element.id == mealId));
        });
      }
    }

    bool isMealFavorite(String id){
      return favoriteMeals.any((meal) => meal.id == id);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meals App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(secondary: Colors.amber),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
      ),
      routes:{
        '/' : (context) => TabsScreen(favoriteMeals),
        '/categoryScreen' : (context) => const CategoryScreen(),
        '/Meal_Screen': (context) => MealSteps(toggleFavorites,isMealFavorite),
      },

    );
  }
}