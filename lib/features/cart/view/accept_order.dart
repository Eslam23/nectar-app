import 'package:flutter/material.dart';

class AcceptOrder extends StatelessWidget {
  const AcceptOrder({Key? key}) : super(key: key);

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
                      'asset/cart/Group 167.png',
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
                          'Your Order has been\naccepted',
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
                          'Your items has been placcd and is on\nit’s way to being processed',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'fonts/Gilroy-Medium.ttf',
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .06,
                        ),

                        //   BasicContainer(
                        //       wid: MediaQuery.of(context).size.width * .84,
                        //       heig: MediaQuery.of(context).size.height * .09,
                        //       fun: () {/*Navigator.push(context, MaterialPageRoute(builder: (_)=>const TabScreen()));*/},
                        //       edgeInsets: EdgeInsets.only(
                        //         top: MediaQuery.of(context).size.height * .04,
                        //         bottom: MediaQuery.of(context).size.height * .04,
                        //       ),
                        //       txtButton: 'Track Order'),
                        //  const Text('Back to home',style: TextStyle(fontSize: 16,fontFamily: 'Gilroy',fontWeight: FontWeight.w600),),
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
