import 'package:flutter/material.dart';
import 'package:untitled/features/cart/view/widget/list_view_cart.dart';

import '../../../../utilies/color_data.dart';
import 'button_checkout.dart';

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
          ButtonCheckOut(),
        ],
      ),
    );
  }
}
