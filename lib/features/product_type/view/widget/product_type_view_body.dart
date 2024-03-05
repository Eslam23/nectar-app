import 'package:flutter/material.dart';
import 'package:untitled/core/api_actions/models.dart';

import 'grid_product_type.dart';
class ProductTypeViewBody extends StatefulWidget {
  final String title;
  const ProductTypeViewBody({Key? key, required this.title}) : super(key: key);

  @override
  State<ProductTypeViewBody> createState() => _ProductTypeViewBodyState();
}

class _ProductTypeViewBodyState extends State<ProductTypeViewBody> {
  late List<Products> products;


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
            title: Center(child: Text(widget.title,style: TextStyle(fontSize: 20,fontFamily: 'fonts/Gilroy-Bold.ttf',),)),
          ),
           GridProductType(title: widget.title),
        ],
      ),
    );
  }
}
