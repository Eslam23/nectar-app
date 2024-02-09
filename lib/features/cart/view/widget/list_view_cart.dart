import 'package:flutter/material.dart';

import '../../../../utilies/color_data.dart';
class ListViewCart extends StatelessWidget {
  const ListViewCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> listCart= [
      {'image':'asset/cart/Group 6858.png','name':'Bell Pepper Red','size':'1kg, Price','price':'\$4.99'},
      {'image':'asset/cart/pngfuel 18.png','name':'Egg Chicken Red','size':'4pcs, Price','price':'\$1.99'},
      {'image':'asset/home/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png','name':'Organic Bananas','size':'12kg, Price','price':'\$3.00'},
      {'image':'asset/cart/pngfuel 3.png','name':'Ginger','size':'250g, Price','price':'\$2.99'},
    ];

    return  Expanded(
    child: ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              leading: Image.asset(listCart[index]['image'],fit: BoxFit.contain,width: MediaQuery.of(context).size.width*.2,),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(listCart[index]['name'],style:const TextStyle(fontFamily: 'fonts/Gilroy-Bold.ttf',fontSize: 16,fontWeight: FontWeight.w600),),

                    const  Icon(Icons.close),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height *.005,),
                  Text(listCart[index]['size'],style:const TextStyle(fontSize:12 ,fontFamily:'fonts/Gilroy-Medium.ttf' ,color: Colors.grey),),
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
                      Text(listCart[index]['price'],style: const TextStyle(fontSize: 20,fontFamily: 'fonts/Gilroy-Bold.ttf',fontWeight: FontWeight.w600),)

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
      itemCount: listCart.length,
    ));
  }
}
