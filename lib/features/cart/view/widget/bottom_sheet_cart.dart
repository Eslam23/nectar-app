import 'package:flutter/material.dart';

import '../../../../basic_container.dart';
import 'check_order.dart';
class BottomSheetCart extends StatelessWidget {
  const BottomSheetCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .65,
      decoration:const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      child: Column(
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
          Center(
            child: BasicContainer(
                wid: MediaQuery.of(context).size.width * .84,
                heig: MediaQuery.of(context).size.height * .06,
                fun: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const CheckOrder()));
                },
                edgeInsets: EdgeInsets.only(

                    top: MediaQuery.of(context).size.height * .02),
                txtButton: 'Place Order'),
          ),
        ],
      ),
    );
  }
}
