import 'package:flutter/material.dart';
import 'package:untitled/features/shop/view/widget/row_header.dart';
import 'package:untitled/features/shop/view/widget/textfield_search.dart';
import 'package:untitled/utilies/color_data.dart';

import '../../../../carrot_image.dart';

class ShopViewBody extends StatelessWidget {
  const ShopViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .05,
          right: MediaQuery.of(context).size.width * .05,
          top: MediaQuery.of(context).size.height * .05),
      child: Column(
        children: [
          CarrotImage(
            wid: MediaQuery.of(context).size.width * .05,
            heig: MediaQuery.of(context).size.height * .05,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .002,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/home/Exclude.png',
                fit: BoxFit.contain,
                width: 18,
                height: 18,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .01,
              ),
              Text(
                'Dhaka, Banassre',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    fontFamily: 'Gilroy'),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          TextFieldSearch(),
          SizedBox(
            height: 20,
          ),
          RowHeader(txtHeader: 'Exclusive Offer',seeAll: 'See all',),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(top: 30,right: 15,left: 15,bottom: 15),
            width: 173,
            height: 248,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              border: Border.all(color: Color(0xFFE2E2E2))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('asset/home/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',fit: BoxFit.contain,width: 107,height: 67,)),
                SizedBox(height: 30,),
                Text('Organic Banana',style: TextStyle(fontSize: 14,fontFamily: 'fonts/Gilroy-Bold.ttf',fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                Text('1kg, Priceg',style: TextStyle(),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
