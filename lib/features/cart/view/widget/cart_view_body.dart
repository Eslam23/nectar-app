import 'package:flutter/material.dart';

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
          Text(
            'My Cart',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'fonts/Gilroy-Bold.ttf',
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Divider(),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading: Image.asset('asset/home/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',fit: BoxFit.contain,),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Bell Pepper Red',style: TextStyle(fontFamily: 'fonts/Gilroy-Bold.ttf',fontSize: 16,fontWeight: FontWeight.w600),),
                            SizedBox(width: MediaQuery.of(context).size.width*.25,),

                            Icon(Icons.close),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Text('1kg, Price',style: TextStyle(fontSize:12 ,fontFamily:'fonts/Gilroy-Medium.ttf' ,color: Colors.grey),),
                        SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width *.28,
                          height: MediaQuery.of(context).size.height*.05,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * .1,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.withOpacity(.4),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.remove,
                                    size: 24,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width *.02,),
                              Center(
                                  child: Text(
                                    '${1}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Gilroy',
                                        fontSize: 15),
                                  )),
                              SizedBox(width: MediaQuery.of(context).size.width *.02,),
                              Container(
                                width: MediaQuery.of(context).size.width * .1,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.withOpacity(.4),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 24,
                                    color: ColorsData.basicColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width*.25,),
                        Text('\$4.99',style: TextStyle(fontSize: 20,fontFamily: 'fonts/Gilroy-Bold.ttf',fontWeight: FontWeight.w600),)

                      ],
                    ),
                      ],
                    ),

                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.02,),
                  Divider(endIndent: MediaQuery.of(context).size.width*.07,indent: MediaQuery.of(context).size.width*.07,)
                ],
              );
            },
            itemCount: 6,
          )),
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
                  Text(
                    'Go to Checkout',
                    style: const TextStyle(
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
                        color: Color(0xFF489E67)),
                    child: Center(
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
