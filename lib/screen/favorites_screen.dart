import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('Favorites'),
      ),
      body: const Center(
        child: Text(
          'Favorites screen',
        ),
      ),
    );
  }
}
