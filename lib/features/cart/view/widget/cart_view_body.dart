import 'package:flutter/material.dart';
import 'package:untitled/features/cart/view/widget/list_view_cart.dart';

import '../../../../utilies/color_data.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const   Text(
            'My Cart',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'fonts/Gilroy-Bold.ttf',
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          const  Divider(),
        const ListViewCart(),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .02,
              bottom: MediaQuery.of(context).size.height * .02,
            ),
            width: MediaQuery.of(context).size.width * .84,
            height: MediaQuery.of(context).size.height * .09,
            decoration: BoxDecoration(
              color: ColorsData.basicColor,
              borderRadius: BorderRadius.circular(19),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Go to Checkout',
                    style:  TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*.1,right: MediaQuery.of(context).size.width*.05),
                    width: MediaQuery.of(context).size.width * .1,
                    height: MediaQuery.of(context).size.height * .03,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:const Color(0xFF489E67)),
                    child:const Center(
                      child: Text(
                        '\$12.96',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            fontFamily: 'Gilroy',
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
