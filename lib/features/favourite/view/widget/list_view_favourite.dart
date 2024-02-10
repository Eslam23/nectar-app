import 'package:flutter/material.dart';
import 'package:untitled/utilies/styles.dart';

class ListViewFavourite extends StatelessWidget {
  const ListViewFavourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                 ListTile(
                 leading: Image.asset( ListsData.listFavourite[index]['image'],fit: BoxFit.contain,width:MediaQuery.of(context).size.width*.2),
                 title:  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text( ListsData.listFavourite[index]['name'],style:const TextStyle(fontFamily: 'fonts/Gilroy-Bold.ttf',fontSize: 16,fontWeight: FontWeight.w600),),

                         SizedBox(height: MediaQuery.of(context).size.height*.005,),
                         Text( ListsData.listFavourite[index]['size'],style:const TextStyle(fontSize:12 ,fontFamily:'fonts/Gilroy-Medium.ttf' ,color: Colors.grey),),
                       ],
                     ),

                     Text( ListsData.listFavourite[index]['price'],style:const TextStyle(fontSize: 16,fontFamily: 'Gilroy',fontWeight: FontWeight.w600),)
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
          itemCount: ListsData.listFavourite.length,
        ));

  }
}
