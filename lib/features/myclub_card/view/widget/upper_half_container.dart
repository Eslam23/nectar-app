import 'package:flutter/material.dart';

import '../../../../utilies/color_data.dart';
class UpperHalfContainer extends StatelessWidget {
  const UpperHalfContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width *.03,right: MediaQuery.of(context).size.width *.03),
      width: MediaQuery.of(context).size.width *.8,
      height: MediaQuery.of(context).size.height *.18,
      decoration: BoxDecoration(
        color: ColorsData.basicColor.withOpacity(.7),
        borderRadius: BorderRadius.only(topLeft:Radius.circular(12) ,topRight: Radius.circular(12) ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'M',
                      style: TextStyle(fontSize:22 ,fontWeight:FontWeight.w700 ,fontFamily: 'OleoScript',color: Color(0xFFC1A158)),
                    ),
                    TextSpan(
                      text: 'yClub',
                      style: TextStyle(fontSize:22 ,fontWeight:FontWeight.w400,fontFamily: 'OleoScript',color: Colors.white),
                    ),
                  ],
                ),
              ),
              buildText('Points',18),
              buildText('Dinar',18),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildText('earn more everyday',15),
              buildText('5.01',18),
              buildText('0.50',18),
            ],
          ),
        ],
      ),
    );
  }
  Text buildText(String txt,double size) => Text(txt,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize:size),);

}
