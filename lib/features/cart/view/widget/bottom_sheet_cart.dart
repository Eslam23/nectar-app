import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/utilies/color_data.dart';

import '../../../../basic_container.dart';
import 'check_order.dart';
import 'complete_payment.dart';
class BottomSheetCart extends StatelessWidget {
  const BottomSheetCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> listText=[
      {'title':Text('Subtotal',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w400),),'price':'\$${15.39}'},
      {'title':Text('Tax',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w400),),'price':'\$${1.39}'},
      {'title':Text('Delivery',style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w400),),'price':'\$${1.39}'},
      {'title':Text('Total',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),),'price':'\$${18.39}'},
    ];
    return Container(
      padding: EdgeInsets.only(top: 15),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .65,
      child:Column(
        children: [
          SizedBox(
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding:EdgeInsets.only(right: 10,left: 10) ,

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: Colors.grey.withOpacity(.3),
                hintText: 'Enter promo code',

                suffix:Container(
alignment: Alignment.center,
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                    color: ColorsData.basicColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(child: Text('Apply',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)),
                ),
                prefix:  Padding(
                  padding: const EdgeInsets.only(right: 8.0,top: 0,bottom: 0),
                  child: Icon(Icons.qr_code,size: 20,),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return Column(
                children: [
                  ListTile(
                    trailing:Text( listText[index]['price'],style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                    leading: listText[index]['title'],
                  ),
                  Divider(
                    endIndent: 15,
                    indent: 15,
                  ),
                ],
              );
            },itemCount: listText.length,),
          ),
          Center(
            child: BasicContainer(
                wid: MediaQuery.of(context).size.width * .7,
                heig: MediaQuery.of(context).size.height * .06,
                fun: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const CompletePayment()));
                },
                edgeInsets: EdgeInsets.only(
bottom: MediaQuery.of(context).size.height * .02 ,
                    top: MediaQuery.of(context).size.height * .02),
                txtButton: 'Checkout'),
          ),
        ],
      ),
      /* Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .05,
              right: MediaQuery.of(context).size.width * .05,
              top: MediaQuery.of(context).size.width * .05,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Checkout',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Gilroy',
                      fontSize: 22),
                ),
                Icon(
                  Icons.close,
                  size: 20,
                ),
              ],
            ),
          ),
          Divider(),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Gilroy',
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Select Method',
                  style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 20,
            ),
          ),
          Divider(
            height: 10,
            endIndent: MediaQuery.of(context).size.width * .05,
            indent: MediaQuery.of(context).size.width * .05,
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Gilroy',
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Image.asset('asset/cart/card.png',fit:BoxFit.contain,width: MediaQuery.of(context).size.width *.05,),


              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 20,
            ),
          ),
          Divider(
            height: 10,
            endIndent: MediaQuery.of(context).size.width * .05,
            indent: MediaQuery.of(context).size.width * .05,
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Promo Code',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Gilroy',
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Pick discount',
                  style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 20,
            ),
          ),
          Divider(
            height: 10,
            endIndent: MediaQuery.of(context).size.width * .05,
            indent: MediaQuery.of(context).size.width * .05,
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Cost',
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Gilroy',
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '\$13.97',
                  style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 20,
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.05,right: MediaQuery.of(context).size.width*.05),
            child: Text(
              'By placing an order you agree to our\nTerms And Conditions',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  fontFamily: 'Gilroy',
                  color: Colors.grey),
            ),
          ),

        ],
      ),*/
    );
  }
}
