import 'package:flutter/material.dart';

import '../../../../utilies/color_data.dart';
class ItemContainer extends StatelessWidget {
  const ItemContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width *.04),
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .026,
          right: MediaQuery.of(context).size.width * .025,
          left: MediaQuery.of(context).size.width * .025,
          bottom: MediaQuery.of(context).size.height * .025),
      width: MediaQuery.of(context).size.width *.4,
      height: MediaQuery.of(context).size.height *.31,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          border: Border.all(color: const Color(0xFFE2E2E2))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Image.asset(
                'asset/home/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',
                fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width *.3,
                height: MediaQuery.of(context).size.height  *.08,
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height *.04,
          ),
          const Text(
            'Organic Banana',
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'fonts/Gilroy-Bold.ttf',
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height *.01,
          ),
          const Text(
            '1kg, Priceg',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontFamily: 'fonts/Gilroy-Medium.ttf'),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height *.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '\$4.99',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Gilroy'),
              ),
              Container(
                width: MediaQuery.of(context).size.width *.11,
                height: MediaQuery.of(context).size.height *.055,
                decoration: BoxDecoration(
                  color: ColorsData.basicColor,
                  borderRadius: BorderRadius.circular(17),
                ),
                child:const Center(
                  child: Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }
}
