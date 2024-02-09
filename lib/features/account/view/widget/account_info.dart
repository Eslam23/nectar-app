import 'package:flutter/material.dart';

import '../../../../utilies/color_data.dart';
class AccountInfo extends StatelessWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   ListTile(
      leading: const CircleAvatar(radius: 27,backgroundColor: Colors.red,),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
          const  Text('Mahmoud Mhassib',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,fontFamily: 'fonts/Gilroy-Bold.ttf'),),
            Icon(Icons.colorize,size: 20,color: ColorsData.basicColor,)
          ],),
          const   Text('Imshuvo97@gmail.com',style: TextStyle(fontSize:14 ,fontFamily:'fonts/Gilroy-Medium.ttf' ,color: Colors.grey),),
        ],
      ),
    );

  }
}
