import 'package:flutter/material.dart';
import '../widgets/category_card.dart';
import '../dummy_data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final appBar = AppBar(
    elevation: 0.0,
    title: const Text('Meals'),
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
