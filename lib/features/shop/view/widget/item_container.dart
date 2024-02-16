import 'package:flutter/material.dart';

import '../../../../utilies/color_data.dart';
class ItemContainer extends StatelessWidget {
  final String img;
  final String name;
  final num price;
  final String size;
  const ItemContainer({Key? key, required this.img, required this.price, required this.size, required this.name, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width *.03),
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .02,
          right: MediaQuery.of(context).size.width * .025,
          left: MediaQuery.of(context).size.width * .025,
          bottom: MediaQuery.of(context).size.height * .003
      ),
      width: MediaQuery.of(context).size.width *.4,
      height: MediaQuery.of(context).size.height *.28,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          border: Border.all(color: const Color(0xFFE2E2E2))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Image.asset(
                img,
                fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width *.3,
                height: MediaQuery.of(context).size.height  *.08,
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height *.03,
          ),
           Text(
            name,
            style:const TextStyle(
                fontSize: 14,
                fontFamily: 'fonts/Gilroy-Bold.ttf',
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height *.01,
          ),
           Text(
            size,
            style:const TextStyle(
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
               Text(
               '${price}',
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
