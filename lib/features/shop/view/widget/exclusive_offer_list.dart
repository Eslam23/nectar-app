/*
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/api_actions/cart_provider.dart';

import '../../../../core/api_actions/models.dart';
import '../../../../core/api_actions/provider_method.dart';
import '../../../product_details/product_details_view.dart';
import 'item_container.dart';
class ExclusiveOfferList extends StatelessWidget {
  final Products products;
  const ExclusiveOfferList({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Consumer<ProviderProduct>(
      builder: (context,value,index){
        final prov=value.getExclusiveOffer();
        if(prov.isNotEmpty){
          return SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ProductDetailsView(
                              name:prov[index].title!,*/
/* ListsData.listExclusive[index]['name'],*//*

                              price: prov[index].price!,
                              size: prov[index].amount!, img: prov[index].image!.url!,
                            )));
                  },
                  child: ItemContainer(
                    img: prov[index].image!.url!,
                    price:prov[index].price!,
                    size: prov[index].amount!,
                    name: prov[index].title!, fun: () {Provider.of<CartProvider>(context,listen: false).addProduct(products);  },
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: prov.length,
            ),
          );
        }else{
          return const SizedBox(height:20,width:20,child: CircularProgressIndicator(strokeWidth: 3,));
        }
      },

    );
  }
}
*/
