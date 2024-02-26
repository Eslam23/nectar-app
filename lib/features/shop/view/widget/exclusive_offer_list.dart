import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/api_actions/models.dart';
import '../../../../core/api_actions/provider_method.dart';
import '../../../product_details/product_details_view.dart';
import 'item_container.dart';
class ExclusiveOfferList extends StatelessWidget {
  final Products products;
  const ExclusiveOfferList({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Consumer<ProviderProduct>(
      builder: (context,value,index){
        final prov=value.getExclusiveOffer();
        if(prov.isNotEmpty){
          return SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: prov.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ProductDetailsView(
                              products: prov[index],
                            )));
                  },
                  child: ItemContainer(products: prov[index],

                  ),
                );
              },

            ),
          );
        }else{
          return const SizedBox(height:20,width:20,child: CircularProgressIndicator(strokeWidth: 3,));

        }
      },

    );
  }
}
