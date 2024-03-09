import 'package:flutter/material.dart';
import 'package:untitled/core/api_actions/offer/model.dart';
import 'package:untitled/utilies/color_data.dart';

class StackListOffer extends StatelessWidget {
  final String desc;
  final String title;
  final String img;
//final Offers offers;
  const StackListOffer({
    super.key,
    required this.desc,
    required this.title,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'asset/home/Mask Group (4).png',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'asset/home/Mask Group1.png',
          fit: BoxFit.contain,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              img,
              //prod[index!].image!.url!,
              //'asset/home/pngfuel 1.png',
              fit: BoxFit.contain,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  // prod[index!].title!,
                  //'Fresh Vegetables',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black,
                      height: 2),
                ),
                Text(
                  desc,
                  //prod[index!].description!,
                  //'Get Up To 40% OFF',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: ColorsData.basicColor),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
