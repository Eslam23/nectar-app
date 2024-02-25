import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/basic_container.dart';
import 'package:untitled/features/product_details/view/widget/counter_price.dart';

import '../../../../core/api_actions/cart_provider.dart';
import '../../../../core/api_actions/favourite_provider.dart';
import '../../../../core/api_actions/models.dart';
import 'image_slider.dart';
import 'list_expansion.dart';

class ProductDetailsViewBody extends StatefulWidget {
  final Products products;

  const ProductDetailsViewBody({Key? key, required this.products,  }) : super(key: key);

  @override
  State<ProductDetailsViewBody> createState() => _ProductDetailsViewBodyState();
}

class _ProductDetailsViewBodyState extends State<ProductDetailsViewBody> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * .02,
          left: MediaQuery.of(context).size.width * .05,
          right: MediaQuery.of(context).size.width * .05,
          top: MediaQuery.of(context).size.height * .05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
              )),
           ImageSlider(img: widget.products.image!.url!,),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.products.title!,
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'fonts/Gilroy-Bold.ttf'),
              ),
             InkWell(
               onTap: (){Provider.of<FavouriteProvider>(context,listen: false).addFavoriteProduct(widget.products);},
               child: const Icon(
                  Icons.favorite_border,
                  size: 24,
                ),
             ),
            ],
          ),
          Text(
            widget.products.amount!,
            style:const TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
           CounterPrice(price: widget.products.price!,),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
         const Divider(),
           ListExpansion(),
          Center(
            child: BasicContainer(
                wid: MediaQuery.of(context).size.width * .84,
                heig: MediaQuery.of(context).size.height * .07,
                fun: () {Provider.of<CartProvider>(context,listen: false).addProduct(widget.products);},
                edgeInsets: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .03,
                ),
                txtButton: 'Add To Basket'),
          ),        ],
      ),
    );
  }

}
