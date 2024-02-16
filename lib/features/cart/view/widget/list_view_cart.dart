
import 'package:flutter/material.dart';
import 'package:untitled/utilies/styles.dart';

import '../../../../utilies/color_data.dart';
class ListViewCart extends StatefulWidget {
  const ListViewCart({Key? key}) : super(key: key);

  @override
  State<ListViewCart> createState() => _ListViewCartState();
}

class _ListViewCartState extends State<ListViewCart> {
  increase(int counter){
    setState(() {
      counter++;
    });
  }
  decrease(int counter){
    if(counter>1){
      setState(() {
        counter--;
      });
    }
    return counter;
  }
  @override
  Widget build(BuildContext context) {

    return  Expanded(
    child: ListView.builder(

      itemBuilder: (context, index) {
        double total = ListsData.listCart[index]['price'] * (ListsData.listCart[index]['count']);
        String totalShow = total.toStringAsFixed(2);
        return Column(
          children: [
            ListTile(
              leading: Image.asset(ListsData.listCart[index]['image'],fit: BoxFit.contain,width: MediaQuery.of(context).size.width*.2,),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(ListsData.listCart[index]['name'],style:const TextStyle(fontFamily: 'fonts/Gilroy-Bold.ttf',fontSize: 16,fontWeight: FontWeight.w600),),

                      GestureDetector(onTap: (){setState(() {
                      });},child: Icon(Icons.close)),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height *.005,),
                  Text(ListsData.listCart[index]['size'],style:const TextStyle(fontSize:12 ,fontFamily:'fonts/Gilroy-Medium.ttf' ,color: Colors.grey),),
                  SizedBox(height: MediaQuery.of(context).size.height*.03,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width *.29,
                        height: MediaQuery.of(context).size.height*.05,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  if(ListsData.listCart[index]['count'] > 1){
                                    ListsData.listCart[index]['count']--;
                                  }

                                });
                                },
                              child: Container(
                                width: MediaQuery.of(context).size.width * .1,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.withOpacity(.4),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.remove,
                                    size: 24,
                                    color:ListsData.listCart[index]['count'] > 1?ColorsData.basicColor: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width *.02,),
                             Center(
                                child: Text(
                                  '${ListsData.listCart[index]['count']}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Gilroy',
                                      fontSize: 15),
                                )),
                            SizedBox(width: MediaQuery.of(context).size.width *.02,),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  ListsData.listCart[index]['count']++;
                                });
                                //increase(ListsData.listCart[index]['count']);
                                },
                              child: Container(
                                width: MediaQuery.of(context).size.width * .1,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.withOpacity(.4),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 24,
                                    color: ColorsData.basicColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(totalShow,style:  const TextStyle(fontSize: 20,fontFamily: 'fonts/Gilroy-Bold.ttf',fontWeight: FontWeight.w600),)

                    ],
                  ),
                ],
              ),

            ),
            SizedBox(height: MediaQuery.of(context).size.height*.02,),
            Divider(endIndent: MediaQuery.of(context).size.width*.07,indent: MediaQuery.of(context).size.width*.07,)
          ],
        );
      },
      itemCount: ListsData.listCart.length,
    ));
  }
}
