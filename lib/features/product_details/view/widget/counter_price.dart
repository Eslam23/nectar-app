import 'package:flutter/material.dart';
import 'package:untitled/utilies/color_data.dart';

class CounterPrice extends StatefulWidget {
  final num price;
  const CounterPrice({Key? key, required this.price}) : super(key: key);

  @override
  State<CounterPrice> createState() => _CounterPriceState();
}

class _CounterPriceState extends State<CounterPrice> {
  int count=1;
 increase(){
   setState(() {
     count++;
   });
 }
 decrease(){
   if(count>1){
     setState(() {

       count--;
     });
   }
   return count;
 }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('\$${(widget.price*count).toStringAsFixed(2)}',style: TextStyle(fontSize: 22,fontFamily: 'fonts/Gilroy-Bold.ttf',fontWeight: FontWeight.w600,color: ColorsData.basicColor),),

        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap:(){
                  decrease();
                  },
                child:  Icon(
                  Icons.remove,
                  size: 24,
                  color:count>1? ColorsData.basicColor:Colors.grey,
                ),
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
                  '$count',
                  style:const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Gilroy',
                      fontSize: 15),
                )),
              ),
              SizedBox(width: MediaQuery.of(context).size.width *.02,),
              GestureDetector(
                onTap: (){increase();},
                child: Icon(
                  Icons.add,
                  size: 24,
                  color: ColorsData.basicColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
