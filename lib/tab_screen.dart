import 'package:bottom_bar_page_transition/bottom_bar_page_transition.dart';
import 'package:flutter/material.dart';
import 'package:untitled/utilies/color_data.dart';
import 'features/account/account_view.dart';
import 'features/cart/cart_view.dart';
import 'features/explore/explore_view.dart';
import 'features/favourite/favourite_view.dart';
import 'features/shop/shop_view.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _currentPage = 0;
  static const int totalPages = 5;
  static const List<String> pageName = [
    'Shop',
    'Explore',
    'Cart',
    'Favourite',
    'Account',
  ];
  List<dynamic> _pages = [
    ShopView(),
    ExploreView(),
    CartView(),
    FavouriteView(),
    AccountView(),
  ];
List<String> _imag=[
  'asset/home/store 1.png',
  'asset/home/Group 3.png',
  'asset/home/Vector (2).png',
  'asset/home/Vector (1).png',
  'asset/home/user 1.png',
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: BottomBarPageTransition(
        builder: (BuildContext context, int index) {
          return BottomNavigationBar(
              currentIndex: _currentPage,
              selectedItemColor: ColorsData.basicColor,
              selectedIconTheme: IconThemeData(color: ColorsData.basicColor),
              unselectedItemColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                _currentPage=index;
                setState(() {});
              },
              items: List.generate(totalPages, (index) => BottomNavigationBarItem(
                  icon:Image.asset(_imag[index], color: _currentPage==index?ColorsData.basicColor:Colors.black,) ,label: pageName[index])),);
        },
        currentIndex: _currentPage,
        totalLength: totalPages,
      ),
    );
  }
}
