import 'package:flutter/material.dart';

class ScanCodeViewBody extends StatelessWidget {
  const ScanCodeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Text(
            'Welcome , Mahmoud',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Text(
            'Welcome in Scan & Go !\nThe fastest way to shoping',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.of(context).size.height *.08,),
          Image.asset('asset/account/Frame 30.png',fit: BoxFit.contain,width: MediaQuery.of(context).size.width *.5,height: MediaQuery.of(context).size.width *.5,),
          Spacer(),
        ],
      ),
    );
  }
}
