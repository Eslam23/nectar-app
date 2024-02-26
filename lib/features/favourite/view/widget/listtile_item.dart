import 'package:flutter/material.dart';
import 'package:untitled/core/api_actions/models.dart';
class ListTileItem extends StatelessWidget {
  final Products product;
  const ListTileItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height *.04),
      child: ListTile(
        leading: Image.network( product.image!.url!,fit: BoxFit.contain,width:MediaQuery.of(context).size.width*.2),
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text( '${product.title}',style:const TextStyle(fontFamily: 'fonts/Gilroy-Bold.ttf',fontSize: 16,fontWeight: FontWeight.w600),),

                SizedBox(height: MediaQuery.of(context).size.height*.005,),
                Text( '${product.amount}',style:const TextStyle(fontSize:12 ,fontFamily:'fonts/Gilroy-Medium.ttf' ,color: Colors.grey),),
              ],
            ),

            Text( '${product.price}',style:const TextStyle(fontSize: 16,fontFamily: 'Gilroy',fontWeight: FontWeight.w600),)
          ],
        ),
        trailing:const Icon(Icons.arrow_forward_ios,size: 20,),
      ),
    );
  }
}
