import 'package:flutter/material.dart';

import '../../../../utilies/color_data.dart';
class ContactContainer extends StatelessWidget {
  const ContactContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width *.05),
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *.01,bottom:  MediaQuery.of(context).size.height *.06),
      height: MediaQuery.of(context).size.height *.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: ColorsData.basicColor.withOpacity(.4),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.headset_mic_rounded,color: ColorsData.basicColor,),
          SizedBox(width: MediaQuery.of(context).size.width *.04,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              Text('Contact our customer service center',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
              Text('0000',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
            ],
          ),
        ],
      ),
    );
  }
}
