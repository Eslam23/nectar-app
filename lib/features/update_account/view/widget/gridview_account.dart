/*
import 'package:flutter/material.dart';

import '../../../../utilies/color_data.dart';
import '../../../about_us/about_us_view.dart';
import '../../../term_condition/term_condition_view.dart';
class GridViewAccount extends StatelessWidget {
  const GridViewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      List<Map<String,dynamic>> serviceAccount=[
      {'icon':Icons.save,'title':'Service & Warranty','subTitle':'6 article',},
      {'icon':Icons.repeat_rounded,'title':'Returns And Exchanges','subTitle':'6 article'},
      {'icon':Icons.payment_rounded,'title':'Payment','subTitle':'17 article'},
      {'icon':Icons.person,'title':'Accounts','subTitle':'9 article'},
      {'icon':Icons.shopping_cart_rounded,'title':'Orders','subTitle':'19 article'},
      {'icon':Icons.apple,'title':'Products','subTitle':'3 article'},
      {'icon':Icons.report_gmailerrorred_sharp,'title':'About US','subTitle':'2 article','onPress':(){Navigator.push(context, MaterialPageRoute(builder: (_)=>AboutUsView()));}},
      {'icon':Icons.headset_mic_rounded,'title':'Help & Support','subTitle':'1 article','onPress':(){Navigator.push(context, MaterialPageRoute(builder: (_)=>TermConditionView()));}},
      {'title':'Extended Warranty','subTitle':'2 article'},
    ];

    return   GridView.builder(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height *.02,bottom:MediaQuery.of(context).size.height *.05 ),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: serviceAccount.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 23,
            mainAxisSpacing: 12,
            mainAxisExtent: MediaQuery.of(context).size.height *.15
        ),
        itemBuilder: (context, index) {
          return  GestureDetector(
            onTap: serviceAccount[index]['onPress'],
            child: Container(
              width: MediaQuery.of(context).size.width *.4,
              height: MediaQuery.of(context).size.height *.15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border:Border.all(color: Colors.grey)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(serviceAccount[index]['icon'],color: ColorsData.basicColor),
                  Text( serviceAccount[index]['title'],style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                  Text( serviceAccount[index]['subTitle'],style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),textAlign: TextAlign.center,),
                ],
              ),
            ),
          );
        });

  }
}
*/
