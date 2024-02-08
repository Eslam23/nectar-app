import 'package:flutter/material.dart';
import 'package:untitled/utilies/color_data.dart';

class CounterPrice extends StatelessWidget {
  const CounterPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.remove,
                size: 24,
                color: Colors.grey,
              ),
              SizedBox(width: MediaQuery.of(context).size.width *.02,),
              Container(
                width: MediaQuery.of(context).size.width * .1,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                    child: Text(
                  '${1}',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Gilroy',
                      fontSize: 15),
                )),
              ),
              SizedBox(width: MediaQuery.of(context).size.width *.02,),

              Icon(
                Icons.add,
                size: 24,
                color: ColorsData.basicColor,
              ),
            ],
          ),
        ),
        Text('\$4.99',style: TextStyle(fontSize: 22,fontFamily: 'fonts/Gilroy-Bold.ttf',fontWeight: FontWeight.w600),)
      ],
    );
  }
}
