import 'package:flutter/material.dart';

class ListViewFavourite extends StatelessWidget {
  const ListViewFavourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> listFavourite=[
      {'image':'asset/favourite/pngfuel 12.png','name':'Sprite Can','size':'325ml, Price','price':'\$1.50'},
      {'image':'asset/beverage/pngfuel 11.png','name':'Diet Coke','size':'355ml, Price','price':'\$1.99'},
      {'image':'asset/favourite/tree-top-juice-apple-grape-64oz 1.png','name':'Apple & Grape Juice','size':'2L, Price','price':'\$15.50'},
      {'image':'asset/favourite/pngfuel 13.png','name':'Coca Cola Can','size':'325ml, Price','price':'\$4.99'},
      {'image':'asset/favourite/pngfuel 14.png','name':'Pepsi Can ','size':'330ml, Price','price':'\$4.99'},
    ];
    return  Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                 ListTile(
                 leading: Image.asset( listFavourite[index]['image'],fit: BoxFit.contain,width:MediaQuery.of(context).size.width*.2),
                 title:  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text( listFavourite[index]['name'],style:const TextStyle(fontFamily: 'fonts/Gilroy-Bold.ttf',fontSize: 16,fontWeight: FontWeight.w600),),

                         SizedBox(height: MediaQuery.of(context).size.height*.005,),
                         Text( listFavourite[index]['size'],style:const TextStyle(fontSize:12 ,fontFamily:'fonts/Gilroy-Medium.ttf' ,color: Colors.grey),),
                       ],
                     ),

                     Text( listFavourite[index]['price'],style:const TextStyle(fontSize: 16,fontFamily: 'Gilroy',fontWeight: FontWeight.w600),)
                   ],
                 ),
                 trailing:const Icon(Icons.arrow_forward_ios,size: 20,),
               ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
                Divider(
                  endIndent: MediaQuery.of(context).size.width * .07,
                  indent: MediaQuery.of(context).size.width * .07,
                ),

              ],
            );
          },
          itemCount: listFavourite.length,
        ));

  }
}
