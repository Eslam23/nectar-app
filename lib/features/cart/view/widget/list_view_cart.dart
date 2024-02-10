import 'package:flutter/material.dart';
import 'package:untitled/utilies/styles.dart';

import '../../../../utilies/color_data.dart';
class ListViewCart extends StatelessWidget {
  const ListViewCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Expanded(
    child: ListView.builder(
      itemBuilder: (context, index) {
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

                    const  Icon(Icons.close),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height *.005,),
                  Text(ListsData.listCart[index]['size'],style:const TextStyle(fontSize:12 ,fontFamily:'fonts/Gilroy-Medium.ttf' ,color: Colors.grey),),
                  SizedBox(height: MediaQuery.of(context).size.height*.03,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width *.28,
                        height: MediaQuery.of(context).size.height*.05,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .1,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.withOpacity(.4),
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child:const Center(
                                child: Icon(
                                  Icons.remove,
                                  size: 24,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width *.02,),
                            const Center(
                                child: Text(
                                  '${1}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Gilroy',
                                      fontSize: 15),
                                )),
                            SizedBox(width: MediaQuery.of(context).size.width *.02,),
                            Container(
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
                          ],
                        ),
                      ),
                      Text(ListsData.listCart[index]['price'],style: const TextStyle(fontSize: 20,fontFamily: 'fonts/Gilroy-Bold.ttf',fontWeight: FontWeight.w600),)

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
