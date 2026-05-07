
import 'package:flutter/material.dart';
import 'package:t2410e_flutter/screens/cart/cart.dart';
import 'package:t2410e_flutter/screens/home/home.dart';
import 'package:t2410e_flutter/screens/profile/profile.dart';
import 'package:t2410e_flutter/screens/search/search.dart';

class MyPage extends StatefulWidget{
  final String title;

  const MyPage({super.key, required this.title});

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage>{
  List<Widget> screens = [
    Home(),
    Search(),
    Cart(),
    Profile()
  ];

  int _selectedIndex = 0;
  _changeTab(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange,
      ) ,
      body: screens[_selectedIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_max_outlined),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_off_outlined),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "Profile")
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black54,
        onTap: (index)=> _changeTab(index),
      ),
    );
  }
  
}