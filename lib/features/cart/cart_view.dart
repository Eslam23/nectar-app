
import 'package:flutter/material.dart';
import 'package:untitled/features/cart/view/widget/bottom_sheet_cart.dart';
import 'package:untitled/features/cart/view/widget/button_checkout.dart';
import 'package:untitled/features/cart/view/widget/list_view_cart.dart';
class CartView extends StatefulWidget {

  final int? currentPageByIndex;
  const CartView({Key? key, this.currentPageByIndex,}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
bool show=true;
  @override
  Widget build(BuildContext context) {

    return  SafeArea(
      child: Scaffold(

        body:  Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .05),
          child: Column(
            children: [
              const Text(
                'My Cart',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'fonts/Gilroy-Bold.ttf',
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              const Divider(),
             show? Text(''):Image.asset('asset/cart/Frame 7061.png',fit:BoxFit.contain,height:MediaQuery.of(context).size.height *.05),
              ListViewCart(),
              ButtonCheckOut(
                fun: () {
                  setState((){
                    show =! show;
                  });
                  showModalBottomSheet(
                      context: context, builder: (ctx) => const BottomSheetCart());
                },
              ),

            ],
          ),
        ),
      ),
    );
  }

}



