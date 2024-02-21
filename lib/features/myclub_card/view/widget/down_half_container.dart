import 'package:flutter/material.dart';
class DownHalfContainer extends StatelessWidget {
  const DownHalfContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: MediaQuery.of(context).size.width *.8,
      height: MediaQuery.of(context).size.height *.1,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(.5),
              blurRadius: 1,
              offset: Offset(0,3),
              spreadRadius: 1
          ),
        ],
        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(12) ,bottomRight: Radius.circular(12) ),
      ),
      child: Center(
        child: Image.asset('asset/account/Rectangle 93.png',fit: BoxFit.contain,),
      ),
    );

  }
}
