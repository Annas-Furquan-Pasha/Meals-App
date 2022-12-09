import 'package:flutter/material.dart';
import 'package:meals_app/screen/meal_screen.dart';
import './screen/tabs_screen.dart';
import './screen/category_screen.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Meals App',
  theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(secondary: Colors.amber),
    canvasColor: const Color.fromRGBO(255, 254, 229, 1),
    fontFamily: 'Raleway',
  ),
  routes:{
    '/' : (context) => const TabsScreen(),
    '/categoryScreen' : (context) => const CategoryScreen(),
    '/Meal_Screen': (context) => const MealSteps(),
  },
),);