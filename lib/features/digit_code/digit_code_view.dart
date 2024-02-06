import 'package:flutter/material.dart';
import 'package:untitled/features/digit_code/view/widget/digit_code_view_body.dart';
import 'package:untitled/utilies/color_data.dart';

class DigitCodeView extends StatelessWidget {
  const DigitCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width *.09),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Resend Code',
              style: TextStyle(
                fontSize: 18,
                color: ColorsData.basicColor,
                fontFamily: 'fonts/Gilroy-Medium.ttf',
                fontWeight: FontWeight.normal
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                height: MediaQuery.of(context).size.height *.15,
                width: MediaQuery.of(context).size.width *.15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsData.basicColor,
                ),
                child:const Center(
                  child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 20,),
                ),
              ),
            ),
          ],
        ),
      ),
      body:const DigitCodeViewBody(),
    );
  }
}