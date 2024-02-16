import 'package:flutter/material.dart';
import 'package:untitled/basic_container.dart';
import 'package:untitled/features/product_details/view/widget/counter_price.dart';

import 'image_slider.dart';
import 'list_expansion.dart';

class ProductDetailsViewBody extends StatefulWidget {

  const ProductDetailsViewBody({Key? key,  required this.name,required this.price,required this.size}) : super(key: key);
  final String name;
  final String size;
  final  num price;

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
          const ImageSlider(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.name,
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'fonts/Gilroy-Bold.ttf'),
              ),
             const Icon(
                Icons.favorite_border,
                size: 24,
              ),
            ],
          ),
          Text(
            widget.size,
            style:const TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
           CounterPrice(price: widget.price,),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
         const Divider(),
          const ListExpansion(),
          Center(
            child: BasicContainer(
                wid: MediaQuery.of(context).size.width * .84,
                heig: MediaQuery.of(context).size.height * .07,
                fun: () {},//Navigator.push(context, MaterialPageRoute(builder: (_)=>const CartView()));},
                edgeInsets: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .03,
                ),
                txtButton: 'Add To Basket'),
          ),        ],
      ),
    );
  }

}
