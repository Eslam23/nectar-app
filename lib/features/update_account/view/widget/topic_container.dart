import 'package:flutter/material.dart';
class TopicContainer extends StatelessWidget {
  const TopicContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *.02,bottom: MediaQuery.of(context).size.height *.02),
      width: MediaQuery.of(context).size.width *.4,
      height: MediaQuery.of(context).size.height *.15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border:Border.all(color: Colors.grey)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:const [
          Text('Shipping & Deliver',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
          Text('2 article',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
