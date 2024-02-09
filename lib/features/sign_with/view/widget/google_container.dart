import 'package:flutter/material.dart';
class GoogleContainer extends StatelessWidget {
  final String txtButton;
  final Color col;
  final String imag;
  const GoogleContainer({Key? key, required this.txtButton, required this.col, required this.imag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height *.03),
      width: MediaQuery.of(context).size.width *.8,
      height: MediaQuery.of(context).size.height *.09,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: col,
      ),
      child: Center(
        child: Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width *.035,),
            Image.asset(imag,width: 60,height: 35,fit: BoxFit.contain,),
            SizedBox(width: MediaQuery.of(context).size.width *.04,),
            Text(txtButton,style: const TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'Gilroy',fontWeight: FontWeight.w500),),
          ],
        ),
      ),
    );
  }
}
