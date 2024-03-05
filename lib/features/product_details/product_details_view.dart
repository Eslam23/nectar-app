
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/features/product_details/view/widget/product_details_view_body.dart';

import '../../basic_container.dart';
import '../../core/api_actions/cart_provider.dart';
import '../../core/api_actions/models.dart';
class ProductDetailsView extends StatelessWidget {
  final Products products;


  const ProductDetailsView({Key? key, required this.products }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      bottomNavigationBar: Padding(
        padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width *.1),
        child: BasicContainer(
            wid: MediaQuery.of(context).size.width * .6,
            heig: MediaQuery.of(context).size.height * .07,
            fun: () {
              Provider.of<CartProvider>(context, listen: false)
                  .addProduct(products);
            },
            edgeInsets: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * .03,
            ),
            txtButton: 'Add To Basket'),
      ),
      body: ProductDetailsViewBody(products: products,),
    );
  }
}
