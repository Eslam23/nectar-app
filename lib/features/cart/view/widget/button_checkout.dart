import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/api_actions/cart_provider.dart';

import '../../../../utilies/color_data.dart';
import 'bottom_sheet_cart.dart';

class ButtonCheckOut extends StatefulWidget {
  const ButtonCheckOut({Key? key}) : super(key: key);

  @override
  State<ButtonCheckOut> createState() => _ButtonCheckOutState();
}

class _ButtonCheckOutState extends State<ButtonCheckOut> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context, builder: (ctx) => const BottomSheetCart());
      },
      child: Container(
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
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500),
              ),
              Consumer<CartProvider>(
                builder: (context, value, child) {
                  final prov = value.getCartAmount();
                  return Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .1,
                        right: MediaQuery.of(context).size.width * .05),
                    width: MediaQuery.of(context).size.width * .1,
                    height: MediaQuery.of(context).size.height * .03,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFF489E67)),
                    child: Center(
                      child: Text(
                        '\$${prov}',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            fontFamily: 'Gilroy',
                            color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
