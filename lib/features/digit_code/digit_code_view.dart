import 'package:flutter/material.dart';
import 'package:untitled/features/digit_code/view/widget/digit_code_view_body.dart';
import 'package:untitled/features/shop/shop_view.dart';
import 'package:untitled/tab_screen.dart';
import 'package:untitled/utilies/color_data.dart';

import '../location/location_view.dart';

class DigitCodeView extends StatelessWidget {
  const DigitCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .09),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Resend Code',
              style: TextStyle(
                  fontSize: 18,
                  color: ColorsData.basicColor,
                  fontFamily: 'fonts/Gilroy-Medium.ttf',
                  fontWeight: FontWeight.normal),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => TabScreen(
                              currentPageByIndex: 0,
                            )));

                showDialog<String>(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          'Access to access your location\nwhile you see the app ?',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        content: SizedBox(
                          height: MediaQuery.of(context).size.height * .15,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'To share your location we need access to\nyour phon’s location',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xFF7C7C7C)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .04),
                                      width: MediaQuery.of(context).size.width *
                                          .25,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .05,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                              color: ColorsData.basicColor,
                                              width: 1.5)),
                                      child: Center(
                                        child: Text(
                                          'Don\'t Allow',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: ColorsData.basicColor),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                .04),
                                    width:
                                        MediaQuery.of(context).size.width * .28,
                                    height: MediaQuery.of(context).size.height *
                                        .05,
                                    decoration: BoxDecoration(
                                        color: ColorsData.basicColor,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: ColorsData.basicColor,
                                            width: 1.5)),
                                    child: Center(
                                      child: Text(
                                        ' Allow location',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Container(
                height: MediaQuery.of(context).size.height * .15,
                width: MediaQuery.of(context).size.width * .15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsData.basicColor,
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: const DigitCodeViewBody(),
    );
  }
}
