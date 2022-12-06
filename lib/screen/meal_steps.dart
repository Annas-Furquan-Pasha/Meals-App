import 'package:flutter/material.dart';

class MealSteps extends StatelessWidget {
  const MealSteps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('meal steps'),
      ),
      body: Center(
        child : Text(mealId),
      ),
    );
  }
}
