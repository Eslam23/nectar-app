import 'dart:io';

import 'package:bottom_bar_page_transition/bottom_bar_page_transition.dart';
import 'package:flutter/material.dart';

import 'package:untitled/core/api_actions/models.dart';
import 'package:untitled/utilies/color_data.dart';
import 'features/account/account_view.dart';
import 'features/cart/cart_view.dart';
import 'features/explore/explore_view.dart';
import 'features/favourite/favourite_view.dart';
import 'features/shop/shop_view.dart';

class TabScreen extends StatefulWidget {
  late int? currentPageByIndex;
  TabScreen({
    Key? key,
    this.currentPageByIndex ,
  }) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  static const List<String> pageName = [
    'Shop',
    'Search',
    'Cart',
    'Heart',
    'Setting',
  ];
  List<dynamic> pages = [
    ShopView(
      currentPageByIndex: 0,
      products: Products(
        image: Picture(),
        sId: '',
        title: '',
        category: '',
        amount: '',
        price: 0,
        newPrice: 0,
        nutritions: 0,
        description: '',
        bestSelling: true,
        excuOffer: true,
      ),
    ),
    ExploreView(
      currentPageByIndex: 1,
    ),
    CartView(
      currentPageByIndex: 2,
    ),
    FavouriteView(
      currentPageByIndex: 3,
      products: [
        Products(
          image: Picture(),
          sId: '',
          title: '',
          category: '',
          amount: '',
          price: 0,
          newPrice: 0,
          nutritions: 0,
          description: '',
          bestSelling: true,
          excuOffer: true,
        )
      ],
    ),
    AccountView(
      currentPageByIndex: 4,
    ),
  ];
  List<String> imag = [
    'asset/home/store 1.png',
    'asset/home/Group 3.png',
    'asset/home/Vector (2).png',
    'asset/home/Vector (1).png',
    'asset/home/user 1.png',
  ];

  late Products products;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return exit(0);
      },
      child: Scaffold(
        body: pages[widget.currentPageByIndex!],
        bottomNavigationBar: BottomBarPageTransition(
          builder: (BuildContext context, int index) {
            return BottomNavigationBar(
              currentIndex: widget.currentPageByIndex!,
              selectedItemColor: ColorsData.basicColor,
              selectedIconTheme: IconThemeData(color: ColorsData.basicColor),
              unselectedItemColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                setState(() {
                  widget.currentPageByIndex = index;
                });
              },
              items: List.generate(
                  pages.length,
                  (index) => BottomNavigationBarItem(
                      icon: Image.asset(
                        imag[index],
                        color: widget.currentPageByIndex == index
                            ? ColorsData.basicColor
                            : Colors.black,
                      ),
                      label: pageName[index])),
            );
          },
          currentIndex: widget.currentPageByIndex!,
          totalLength: pages.length,
        ),
      ),
    );
  }
}
