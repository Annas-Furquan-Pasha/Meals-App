import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
   final String id;
   final String title;
   final Color color;
  const CategoryCard(this.id, this.title, this.color, {super.key});

  void _details(BuildContext context){
    Navigator.pushNamed(
         context,
        '/categoryScreen',
        arguments: {
          'id' : id,
          'title' : title,
        },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _details(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.5),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(title,
            style: const TextStyle(
              fontSize: 17,
              fontFamily: 'RobotoCondensed',
            ),
          ),
        ),
      ),
    );
  }
}
