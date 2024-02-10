import 'package:flutter/material.dart';
import 'package:untitled/basic_container.dart';
import 'package:untitled/features/product_details/view/widget/counter_price.dart';

import 'image_slider.dart';
import 'list_expansion.dart';

class ProductDetailsViewBody extends StatefulWidget {
/*final int id;*/
  const ProductDetailsViewBody({Key? key,  /*required this.id*/}) : super(key: key);

  @override
  State<ProductDetailsViewBody> createState() => _ProductDetailsViewBodyState();
}

class _ProductDetailsViewBodyState extends State<ProductDetailsViewBody> {

 /* late Map<String ,dynamic> product = {};
  @override
  void initState() {
    product = getProductById(widget.id);
    super.initState();
  }*/

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  )),
              Image.asset(
               // product['image'],
                'asset/product_details/Vector (3).png',
                fit: BoxFit.contain,
                width: 20,
                height: 20,
              ),
            ],
          ),
          ImageSlider(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Naturel Red Apple',
                //product['name'],
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'fonts/Gilroy-Bold.ttf'),
              ),
              Icon(
                Icons.favorite_border,
                size: 24,
              ),
            ],
          ),
          Text(
            '1kg, Price',
            style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          CounterPrice(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          Divider(),
          ListExpansion(),
          Center(
            child: BasicContainer(
                wid: MediaQuery.of(context).size.width * .84,
                heig: MediaQuery.of(context).size.height * .09,
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
