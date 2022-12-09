import 'package:flutter/material.dart';
import './home.dart';
import './favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  final List<Widget> _pages = const [
    Home(),
    Favorites(),
  ];

  int _pageIndex = 0;

  void _selectTab(int index){
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amberAccent,
        currentIndex: _pageIndex,
        type: BottomNavigationBarType.shifting,
        onTap: _selectTab,
        backgroundColor: Theme.of(context).primaryColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories', backgroundColor: Colors.pink,),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites', backgroundColor: Colors.pink,),
        ],
      ),
    );
  }
}
