import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/api_actions/cart_provider.dart';
import 'cart_item.dart';
class ListViewCart extends StatefulWidget {
  const ListViewCart({Key? key}) : super(key: key);

  @override
  State<ListViewCart> createState() => _ListViewCartState();
}

class _ListViewCartState extends State<ListViewCart> {

  @override
  Widget build(BuildContext context) {
    return  Consumer<CartProvider>(
      builder: (context,value,child){
       final prov=value.cartProduct;
       if(prov.isNotEmpty){
         return Expanded(
           child: ListView.builder(
             padding: EdgeInsets.only(left: MediaQuery.of(context).size.width *.02,right:MediaQuery.of(context).size.width *.02 ),
             itemCount: prov.length,
             itemBuilder: (context, index) {
               if(prov.isEmpty){
                 return Center(child: Text('No product at cart',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 24),),);
               }
               final prod=prov[index];
               return CartItem(products: prod,);
             },
           ));
       }else{
         return Expanded(child: const Center(child: Text('No product at cart !!',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),));


       }

      },

    );
  }
}
