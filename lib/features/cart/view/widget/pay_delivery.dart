import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/features/cart/view/accept_order.dart';
import 'package:untitled/features/cart/view/bad_connection.dart';
import 'package:untitled/features/cart/view/widget/payment_delivery_button.dart';

import '../../../../basic_container.dart';
import '../../../../utilies/color_data.dart';

class PayDelivery extends StatefulWidget {
  const PayDelivery({Key? key}) : super(key: key);

  @override
  State<PayDelivery> createState() => _PayDeliveryState();
}

class _PayDeliveryState extends State<PayDelivery> {
  final controlCVV = TextEditingController();
  bool _numberInputValid = true;
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Pay & Delivery'),
          leadingWidth: 40,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(left: 4, top: 0, bottom: 0),
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .04),
              child: Icon(
                Icons.arrow_back_ios,
                size: 12,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorsData.basicColor, width: .5)),
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Image.asset(
              'asset/cart/Frame 7065.png',
              fit: BoxFit.contain,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * .01),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .03),
              width: MediaQuery.of(context).size.width * .85,
              height: MediaQuery.of(context).size.height * .068,
              decoration: BoxDecoration(
                color: Color(0xFFF2F3F2),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PaymentDeliveryButton(
                    col: check
                        ? Color(0xFF53B175).withOpacity(.4)
                        : Color(0xFFF2F3F2),
                    fun: () {
                      setState(() {
                        check = !check;
                      });
                    },
                    textButton: 'Payment',
                    iconData: Icons.payment,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .02,
                  ),
                  PaymentDeliveryButton(
                    col: check
                        ? Color(0xFFF2F3F2)
                        : Color(0xFF53B175).withOpacity(.4),
                    fun: () {
                      setState(() {
                        check = !check;
                      });
                    },
                    textButton: 'Delivery',
                    iconData: Icons.motorcycle,
                  ),
                ],
              ),
            ),
            check
                ? Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * .04,
                            bottom: MediaQuery.of(context).size.height * .02),
                        width: MediaQuery.of(context).size.width * .85,
                        height: MediaQuery.of(context).size.height * .06,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintMaxLines: 1,
                              hintText: 'Card Number',
                              hintStyle:
                                  TextStyle(color: Colors.grey, height: 0),
                              filled: true,
                              fillColor: Colors.grey.withOpacity(.2),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(14),
                              )),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * .02),
                        width: MediaQuery.of(context).size.width * .85,
                        height: MediaQuery.of(context).size.height * .06,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintMaxLines: 1,
                              hintText: 'Cardholder Name',
                              hintStyle:
                                  TextStyle(color: Colors.grey, height: 0),
                              filled: true,
                              fillColor: Colors.grey.withOpacity(.2),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(14),
                              )),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.height * .02),
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .06,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintMaxLines: 1,
                                  hintText: 'Expiry Date',
                                  hintStyle:
                                      TextStyle(color: Colors.grey, height: 0),
                                  filled: true,
                                  fillColor: Colors.grey.withOpacity(.2),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(14),
                                  )),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.height * .02),
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .06,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: controlCVV,
                              onFieldSubmitted: (val) {
                                Fluttertoast.showToast(
                                    msg: 'You entered: ${int.parse(val)}');
                              },
                              onChanged: (String val) {
                                final v = int.tryParse(val);
                                if (v == null) {
                                  setState(() {
                                    _numberInputValid = false;
                                  });
                                } else {
                                  setState(() {
                                    _numberInputValid = true;
                                  });
                                }
                              },
                              decoration: InputDecoration(
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  errorStyle: TextStyle(height: 0),
                                  errorText: _numberInputValid
                                      ? null
                                      : 'Please enter an integer !',
                                  hintMaxLines: 4,
                                  hintText: 'CVV',
                                  hintStyle:
                                      TextStyle(color: Colors.grey, height: 0),
                                  filled: true,
                                  fillColor: Colors.grey.withOpacity(.2),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(14),
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: BasicContainer(
                            wid: MediaQuery.of(context).size.width * .7,
                            heig: MediaQuery.of(context).size.height * .06,
                            fun: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const AcceptOrder()));
                            },
                            edgeInsets: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).size.height * .02,
                                top: MediaQuery.of(context).size.height * .02),
                            txtButton: 'Pay It'),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .04,
                      ),
                      Image.asset(
                        'asset/cart/motorcycle-flatline (1) 1.png',
                        fit: BoxFit.contain,
                      ),
                      Center(
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: 'Would you like to make\nan order for',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                height: 1.5,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: ' Delivery?',
                            style: TextStyle(
                                color: ColorsData.basicColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ])),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width * .05,
                                top: MediaQuery.of(context).size.height * .04),
                            width: MediaQuery.of(context).size.width * .2,
                            height: MediaQuery.of(context).size.height * .05,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Colors.white,
                                border:
                                    Border.all(color: ColorsData.basicColor)),
                            child: Center(
                              child: Text(
                                'Back',
                                style: TextStyle(
                                    color: ColorsData.basicColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => BadConnection()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * .04),
                              width: MediaQuery.of(context).size.width * .2,
                              height: MediaQuery.of(context).size.height * .05,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: ColorsData.basicColor,
                                  border:
                                      Border.all(color: ColorsData.basicColor)),
                              child: Center(
                                child: Text(
                                  'Agree',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
