import 'package:flutter/material.dart';

import 'grid_product_type.dart';
class ProductTypeViewBody extends StatelessWidget {
  const ProductTypeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .05),
      child:  Column(
        children: [
          ListTile(
            trailing: Image.asset('asset/beverage/Group 6839.png',fit: BoxFit.contain,),
            leading:GestureDetector(onTap: (){Navigator.pop(context);},child:const Icon(Icons.arrow_back_ios,size: 20,)) ,
            title:const Center(child: Text('Beverages',style: TextStyle(fontSize: 20,fontFamily: 'fonts/Gilroy-Bold.ttf',),)),
          ),
          const GridProductType(),
        ],
      ),
    );
  }
}
