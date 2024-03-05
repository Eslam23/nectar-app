import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/utilies/color_data.dart';

class ReadyScanBody extends StatefulWidget {
  const ReadyScanBody({Key? key}) : super(key: key);

  @override
  State<ReadyScanBody> createState() => _ReadyScanBodyState();
}

class _ReadyScanBodyState extends State<ReadyScanBody> {
  bool change=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        bottomNavigationBar: InkWell(
          onTap: (){
            setState(() {
              change =! change;
            });
          },
          child:change? Container(
            margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height *.02),
            height: MediaQuery.of(context).size.height *.1,
            decoration: BoxDecoration(
              color: Color(0xFF181725),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.settings_overscan,
              size: 30,
              color: Colors.white,
            ),
          ):Container(
            margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height *.02),
            height: MediaQuery.of(context).size.height *.1,
            decoration: BoxDecoration(
              color: Color(0xFF7C7C7C),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: CircleAvatar(
                backgroundColor: Color(0xFFFB0000),
                radius: 20,
                child: Icon(Icons.close,color: Colors.white,size: 25,),
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *.1),
              child: Image.asset('asset/img.png',fit: BoxFit.fitWidth,),
            ),

           change? Container(
             margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.2),
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .13,
              decoration: BoxDecoration(
                color: ColorsData.basicColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                children: [
                  Text(
                    'Ready to Scan',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        height: 2),
                  ),
                  Text(
                    'ensure the barcode is with markers\n and press to scan an item',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        height: 1.5,

                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  )
                ],
              ),
            ): Container(
             margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.2),

             width: MediaQuery.of(context).size.width * .8,
             height: MediaQuery.of(context).size.height * .13,
             decoration: BoxDecoration(
               color: ColorsData.basicColor,
               borderRadius: BorderRadius.circular(14),
             ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Center(
                   child: CircleAvatar(
                     backgroundColor: Color(0xFFFB0000),
                     radius: 20,
                     child: Icon(Icons.close,color: Colors.white,size: 25,),
                   ),
                 ),
                 Text(
                   'This item currently not available',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                       height: 1.5,

                       color: Colors.white,
                       fontWeight: FontWeight.w400,
                       fontSize: 14),
                 )
               ],
             ),
           ),
          ],
        ));
  }
}
