import 'package:flutter/material.dart';
import 'package:untitled/basic_container.dart';
import 'package:untitled/features/cart/view/order_successful.dart';

class BadConnection extends StatelessWidget {
  const BadConnection({super.key});

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
                      'asset/cart/Frame 7134.png',
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
                          'No Internet Connection',
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
                          'Please check in your wifi',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'fonts/Gilroy-Medium.ttf',
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        BasicContainer(
                            wid: MediaQuery.of(context).size.width * .5,
                            heig: MediaQuery.of(context).size.height * .05,
                            fun: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => OrderSuccessful()));
                            },
                            edgeInsets: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * .02,
                              // bottom: MediaQuery.of(context).size.height * .04,
                            ),
                            txtButton: 'Try Again'),
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
