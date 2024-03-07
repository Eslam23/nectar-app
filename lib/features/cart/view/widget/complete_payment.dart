import 'package:flutter/material.dart';
import 'package:untitled/features/cart/view/widget/pay_delivery.dart';

import '../../../../basic_container.dart';
import '../../../../utilies/color_data.dart';

class CompletePayment extends StatelessWidget {
  const CompletePayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Checkout'),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              Image.asset(
                'asset/cart/Frame 7062.png',
                fit: BoxFit.contain,
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .04,
                    bottom: MediaQuery.of(context).size.height * .02),
                width: MediaQuery.of(context).size.width * .85,
                height: MediaQuery.of(context).size.height * .08,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintMaxLines: 1,
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Colors.grey),
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
                height: MediaQuery.of(context).size.height * .08,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintMaxLines: 1,
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.grey),
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
                height: MediaQuery.of(context).size.height * .08,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintMaxLines: 1,
                      hintText: 'Phone',
                      hintStyle: TextStyle(color: Colors.grey),
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
                height: MediaQuery.of(context).size.height * .08,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintMaxLines: 1,
                      hintText: 'Location',
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(.2),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(14),
                      )),
                ),
              ),
              Center(
                child: BasicContainer(
                    wid: MediaQuery.of(context).size.width * .7,
                    heig: MediaQuery.of(context).size.height * .06,
                    fun: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => PayDelivery()));
                    },
                    edgeInsets: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * .02,
                        top: MediaQuery.of(context).size.height * .02),
                    txtButton: 'Complete Payment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
