import 'package:flutter/material.dart';
import '../widgets/category_card.dart';
import '../dummy_data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // final List<Category> categories = [
  //   const Category(id: 'c1', title: 'italian', color: Colors.red),
  //   const Category(id: 'c2', title: 'mexican'),
  //   const Category(id: 'c3', title: 'indian', color: Colors.blueAccent),
  //   const Category(id: 'c4', title: 'chinese'),
  //   const Category(id: 'c5', title: 'thai'),
  //   const Category(id: 'c6', title: 'japanese'),
  //   const Category(id: 'c7', title: 'english', color: Colors.amber),
  //   const Category(id: 'c8', title: 'vegetarian'),
  // ];

  final appBar = AppBar(
    elevation: 0.0,
    title: const Text('Meals App'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: GridView(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
        ),
        children: DUMMY_CATEGORIES.map((cat) => CategoryCard(cat.id, cat.title, cat.color)).toList(),
      ),
    );
  }
}
