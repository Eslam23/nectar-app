import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/basic_container.dart';
import 'package:untitled/tab_screen.dart';
import 'package:untitled/utilies/color_data.dart';

class OrderSuccessful extends StatelessWidget {
  const OrderSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Image.asset(
                    'asset/cart/Rectangle 17.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    // height: MediaQuery.of(context).size.height * .4,
                  ),
                  Center(
                    child: Image.asset(
                      'asset/cart/image.png',
                      fit: BoxFit.contain,
                      width: MediaQuery.of(context).size.width * .6,
                      height: MediaQuery.of(context).size.height * .3,
                    ),
                  ),
                ],
              )),
          Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Image.asset(
                    'asset/cart/Rectangle 16.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    //  height: MediaQuery.of(context).size.height * .4,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Order successfully placed ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        const Text(
                          'Your order has been successfully processed\n and wil soon be delivered to you.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'fonts/Gilroy-Medium.ttf',
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        BasicContainer(
                            wid: MediaQuery.of(context).size.width * .6,
                            heig: MediaQuery.of(context).size.height * .05,
                            fun: () {
                              /*Navigator.push(context, MaterialPageRoute(builder: (_)=>const TabScreen()));*/
                            },
                            edgeInsets: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * .04,
                              bottom: MediaQuery.of(context).size.height * .02,
                            ),
                            txtButton: 'Track Delivery'),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => TabScreen(
                                          currentPageByIndex: 0,
                                        )));
                          },
                          child: Text(
                            'Continue Shopping',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w500,
                                color: ColorsData.basicColor),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
