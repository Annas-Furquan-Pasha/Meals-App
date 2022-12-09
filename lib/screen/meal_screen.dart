import 'package:flutter/material.dart';
import '../dummy_data.dart';
class MealSteps extends StatelessWidget {
  const MealSteps({Key? key}) : super(key: key);

  Widget builtContainer(List<String> list, double size){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      padding: const EdgeInsets.all(10.0),
      height: size * 0.4,
      width: double.infinity,
      child: ListView.builder(itemBuilder: (ctx, index) => ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.amberAccent,
          child: Text('${index+1}',
             style: const TextStyle(
               color: Colors.pink,
               fontFamily: 'RobotoCondensed',
               fontWeight: FontWeight.bold,
             ),
          ),
        ),
        contentPadding: const EdgeInsets.all(6.0),
        horizontalTitleGap: 5.0,
        minVerticalPadding: 6.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        title: Text(list[index],
          style: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
        itemCount: list.length,
      ),
    );
  }

  Widget builtHeading(String text, double size){
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: size * 0.06,
      width: double.infinity,
        child: Text(text,
          softWrap: true,
          overflow: TextOverflow.visible,
          style: const TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 28.0,
              fontWeight: FontWeight.bold
          ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size.height - AppBar().preferredSize.height - mediaQuery.padding.top;
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((element) => element.id == mealId);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(selectedMeal.title,),
      ),
      body: Column(
        children: <Widget>[
          builtHeading('Ingredients: ', size),
          builtContainer(selectedMeal.ingredients, size),
          SizedBox(height: size * 0.02,),
          builtHeading('Steps:', size),
          builtContainer(selectedMeal.steps, size),
        ],
      ),
    );
  }
}