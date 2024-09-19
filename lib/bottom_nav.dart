import 'package:coffee_application/constant.dart';
import 'package:coffee_application/cover_pages.dart';
import 'package:coffee_application/pages/coffee_detail_page.dart';
import 'package:coffee_application/pages/details_pages.dart';
import 'package:coffee_application/pages/order_pages.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class PracticeBottomNavBar extends StatefulWidget {
  const PracticeBottomNavBar({super.key});

  @override
  State<PracticeBottomNavBar> createState() => _PracticeBottomNavBarState();
}

class _PracticeBottomNavBarState extends State<PracticeBottomNavBar> {
  List list = [
    CoffeeDetailPage(),
    DetailsPages(),
    OrderPages(),
    // CartPage(),
    // HelloPages(),
  ];

  List<Icon> allItems = [
    Icon(Icons.home_outlined,color: Colors.white,),
    Icon(Icons.favorite,color: Colors.white,),
    Icon(Icons.shopping_bag,color: Colors.white,),
    Icon(Icons.notifications_none,color: Colors.white,size: 30),
  ];


  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color:Colors.orange,

        buttonBackgroundColor:primaryColor,
        index: _currentIndex,
        onTap: (int index){
          _currentIndex = index;
          setState(() {
          });
        },
        items: allItems,
      ),
    );  }
}



