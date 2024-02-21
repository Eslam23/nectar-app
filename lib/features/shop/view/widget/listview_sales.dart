import 'package:flutter/material.dart';

import '../../../../utilies/styles.dart';
class ListViewSales extends StatelessWidget {
  const ListViewSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width:double.infinity,
        height: MediaQuery.of(context).size.height *.12,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ListsData.listSales.length,
            shrinkWrap: true,
            itemBuilder: (context,index){
              return Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height *.005,top:MediaQuery.of(context).size.height *.005 ),
                margin: EdgeInsets.only(right: MediaQuery.of(context).size.width *.03,),
                width: MediaQuery.of(context).size.width *.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(1,2),
                      color: Colors.grey.withOpacity(.8)
                    ),
                  ],
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey,)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListsData.listSales[index]['title'],
                    Text(ListsData.listSales[index]['subtitle'],style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),),
                    Text(ListsData.listSales[index]['description'],style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                  ],
                ),
              );
            }));
  }
}
