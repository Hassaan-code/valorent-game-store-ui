import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant_game_store/profile_screen.dart';
import 'package:valorant_game_store/search_screen.dart';
import 'wallet_screen.dart';
import 'second_screen.dart';
import 'home_screen.dart';
class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}
class _TabScreenState extends State<TabScreen> {
  int _currentIndex = 0;
  void onTap(int index){
    setState(() {

    });
  }
  final List<Widget> _screens = [
    HomeScreen(),
    SecondScreen(),
    SearchScreen(),
    WalletScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xffF6543E),
        unselectedItemColor: Color(0xffB3B4B8),
        backgroundColor: Color(0xff000000),
         showSelectedLabels: false,
          showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
              label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,),
              label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet,),
              label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,),
              label: ''
          ),
        ],
      ),
    );
  }
}