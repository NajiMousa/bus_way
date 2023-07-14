import 'package:bus_way/screens/bn_screens/articles_screen.dart';
import 'package:bus_way/screens/bn_screens/favorite_screen.dart';
import 'package:bus_way/screens/bn_screens/home_screen.dart';
import 'package:bus_way/screens/bn_screens/settings_screen.dart';
import 'package:flutter/material.dart';

import '../models/bn_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentValue = 0;
  final List<BnModel> _bnModel = <BnModel>[
    BnModel(title: 'Home', widget: HomeScreen()),
    BnModel(title: 'Favorite', widget: FavoriteScreen()),
    BnModel(title: 'Settings', widget: SettingsScreen()),
    BnModel(title: 'Articles', widget: ArticlesScreen()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(_bnModel[_currentValue].title),
          ),
      body: _bnModel[_currentValue].widget,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,

        fixedColor: Colors.pink,

        iconSize:  24,

        selectedIconTheme: IconThemeData(
          color: Colors.purple,
        ),
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        unselectedItemColor: Colors.grey,
        // selectedItemColor: Colors.black,
        currentIndex: _currentValue,
        onTap: (value) {
          print(value);
          setState(() {
            _currentValue = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            activeIcon: Icon(
              Icons.home,
            ),
            icon: Icon(
              Icons.holiday_village_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            activeIcon: Icon(
              Icons.favorite,
            ),
            icon: Icon(
              Icons.favorite_border_outlined,
            ),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            activeIcon: Icon(
              Icons.article,
            ),
            icon: Icon(
              Icons.article_outlined,
            ),
            label: 'article',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            activeIcon: Icon(
              Icons.article,
            ),
            icon: Icon(
              Icons.article_outlined,
            ),
            label: 'article',
          ),
        ],
      ),
    );
  }
}
