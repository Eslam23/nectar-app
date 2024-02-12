/*
List<Map<String,dynamic>> listCart= [
  {'id':1,'image':'asset/cart/Group 6858.png','name':'Bell Pepper Red','size':'1kg, Price','price':'\$4.99'},
  {'id':2,'image':'asset/cart/pngfuel 18.png','name':'Egg Chicken Red','size':'4pcs, Price','price':'\$1.99'},
  {'id':3,'image':'asset/home/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png','name':'Organic Bananas','size':'12kg, Price','price':'\$3.00'},
  {'id':4,'image':'asset/cart/pngfuel 3.png','name':'Ginger','size':'250g, Price','price':'\$2.99'},
];
Map<String, dynamic>getProductById(int id){
  Map<String, dynamic> product = listCart.firstWhere((element) => element['id']==id);
  return product;
}*/

import 'package:flutter/material.dart';

import 'color_data.dart';

class ListsData{
static const List<Map<String, dynamic>> listExclusive = [
  {
    'image': 'asset/home/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',
    'name': 'Organic Banana',
    'size': '1kg, Priceg',
    'price': 2.99,
    'count':1
  },
  {
    'image': 'asset/home/pngfuel 1.png',
    'name': 'Red Apple',
    'size': '1kg, Priceg',
    'price': 4.99,
    'count':1
  },
  {
    'image': 'asset/home/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',
    'name': 'Organic Banana',
    'size': '1kg, Priceg',
    'price':3.99,
    'count':1
  },
];
static const List<Map<String, dynamic>> listBest = [
  {
    'image': 'asset/cart/Group 6858.png',
    'name': 'Bell Pepper Red',
    'size': '1kg, Priceg',
    'price': 4.99
  },
  {
    'image': 'asset/cart/pngfuel 3.png',
    'name': 'Ginger',
    'size': '250gm, Price',
    'price': 2.99
  },
  {
    'image': 'asset/cart/Group 6858.png',
    'name': 'Bell Pepper Red',
    'size': '1kg, Priceg',
    'price': 4.99
  },
];
static const   List<Map<String, dynamic>> listCategoryGroceries = [
  {'image':'asset/home/4215936-pulses-png-8-png-image-pulses-png-409_409 1.png','name':'Pulse'},
  {'image':'asset/home/8-82858_download-sack-of-rice-png 1.png','name':'Rice'},
  {'image':'asset/home/4215936-pulses-png-8-png-image-pulses-png-409_409 1.png','name':'Pulse'},
];
static const   List<Map<String, dynamic>> listGroceries = [
  {
    'image': 'asset/home/pngfuel 5.png',
    'name': 'Broiler Chicken',
    'size': '1kg, Priceg',
    'price': 4.99
  },
  {
    'image': 'asset/home/pngfuel 4n.png',
    'name': 'Beef Bone',
    'size': '1kg, Priceg',
    'price': 4.99
  },
  {
    'image': 'asset/home/pngfuel 5.png',
    'name': 'Broiler Chicken',
    'size': '1kg, Priceg',
    'price': 4.99
  },
];
static      List<Map<String, dynamic>> itemContentExplore= [
  {'image': 'asset/findproduct/Group 6835.png','category':'Frash Fruits  & Vegetable','colorBorder': ColorsData.basicColor,'colorContainer':ColorsData.basicColor.withOpacity(.1)},
  {'image': 'asset/findproduct/Group 6837.png','category':'Cooking Oil  & Ghee','colorBorder': Color(0xFFF8A44C),'colorContainer':Color(0xFFF8A44C).withOpacity(.1)},
  {'image': 'asset/findproduct/pngfuel 6.png','category':'Meat & Fish','colorBorder': Color(0xFFF7A593),'colorContainer':Color(0xFFF7A593).withOpacity(.1)},
  {'image': 'asset/findproduct/pngfuel 6 (1).png','category':'Bakery & Snacks','colorBorder': Color(0xFFD3B0E0),'colorContainer':Color(0xFFD3B0E0).withOpacity(.1)},
  {'image': 'asset/findproduct/pngfuel 6n.png','category':'Dairy & Eggs','colorBorder': Color(0xFFFDE598),'colorContainer':Color(0xFFFDE598).withOpacity(.1)},
  {'image': 'asset/findproduct/pngfuel 9.png','category':'Beverages','colorBorder': Color(0xFFB7DFF5),'colorContainer':Color(0xFFB7DFF5).withOpacity(.1)},
  {'image': 'asset/findproduct/pngfuel 6.png','category':'Meat & Fish','colorBorder': Color(0xFF836AF6),'colorContainer':Color(0xFF836AF6).withOpacity(.1)},
  {'image': 'asset/findproduct/pngfuel 6 (1).png','category':'Bakery & Snacks','colorBorder': Color(0xFFD73B77),'colorContainer':Color(0xFFD73B77).withOpacity(.1)},


];
static const     List<Map<String,dynamic>> listItemDetailsExplore=[
  {'image':'asset/favourite/pngfuel 12.png','name':'Sprite Can','size':'325ml, Price','price':'\$1.50'},
  {'image':'asset/beverage/pngfuel 11.png','name':'Diet Coke','size':'355ml, Price','price':'\$1.99',"count":1},
  {'image':'asset/favourite/tree-top-juice-apple-grape-64oz 1.png','name':'Apple & Grape Juice','size':'2L, Price','price':'\$15.50',},
  {'image':'asset/favourite/pngfuel 13.png','name':'Coca Cola Can','size':'325ml, Price','price':'\$4.99'},
  {'image':'asset/favourite/pngfuel 14.png','name':'Pepsi Can ','size':'330ml, Price','price':'\$4.99',},
  {'image':'asset/favourite/tree-top-juice-apple-grape-64oz 1 (1).png','name':'Pepsi Can ','size':'330ml, Price','price':"\$4.99",},
];
static      List<Map<String,dynamic>> listCart= [
  {'image':'asset/cart/Group 6858.png','name':'Bell Pepper Red','size':'1kg, Price','price':4.99,"count":1},
  {'image':'asset/cart/pngfuel 18.png','name':'Egg Chicken Red','size':'4pcs, Price','price':1.99,"count":1},
  {'image':'asset/home/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png','name':'Organic Bananas','size':'12kg, Price','price':3.00,"count":1},
  {'image':'asset/cart/pngfuel 3.png','name':'Ginger','size':'250g, Price','price':2.99,"count":1},
];
static const     List<Map<String,dynamic>> listFavourite=[
  {'image':'asset/favourite/pngfuel 12.png','name':'Sprite Can','size':'325ml, Price','price':'\$1.50'},
  {'image':'asset/beverage/pngfuel 11.png','name':'Diet Coke','size':'355ml, Price','price':'\$1.99'},
  {'image':'asset/favourite/tree-top-juice-apple-grape-64oz 1.png','name':'Apple & Grape Juice','size':'2L, Price','price':'\$15.50'},
  {'image':'asset/favourite/pngfuel 13.png','name':'Coca Cola Can','size':'325ml, Price','price':'\$4.99'},
  {'image':'asset/favourite/pngfuel 14.png','name':'Pepsi Can ','size':'330ml, Price','price':'\$4.99'},
];
static const     List<Map<String,dynamic>> listTileAccount=[
  {'title':'Orders','icon':Icon(Icons.local_mall_outlined,size: 20,)},
  {'title':'My Details','icon':Icon(Icons.medical_information_outlined,size: 20,)},
  {'title':'Delivery Address','icon':Icon(Icons.location_on_outlined,size: 20,)},
  {'title':'Payment Methods','icon':Icon(Icons.payment_outlined,size: 20,)},
  {'title':'Promo Cord','icon':Icon(Icons.sell_outlined,size: 20,)},
  {'title':'Notifications ','icon':Icon(Icons.notifications,size: 20,)},
  {'title':'Help','icon':Icon(Icons.help_outline,size: 20,)},
  {'title':'About ','icon':Icon(Icons.info_outline,size: 20,)},
];






}