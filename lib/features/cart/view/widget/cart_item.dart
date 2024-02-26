import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/api_actions/cart_provider.dart';

import '../../../../core/api_actions/models.dart';
import '../../../../utilies/color_data.dart';

class CartItem extends StatefulWidget {
  final Products products;
  const CartItem({Key? key, required this.products}) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  @override
  Widget build(BuildContext context) {
    int price = widget.products.newPrice!;
    int totalPrice = widget.products.newPrice! * widget.products.quantity;

    return Card(
      child: ListTile(
        leading: Image.network(
          widget.products.image!.url!,
          fit: BoxFit.contain,
          width: MediaQuery.of(context).size.width * .2,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.products.title!,
                  style: const TextStyle(
                      fontFamily: 'fonts/Gilroy-Bold.ttf',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        Provider.of<CartProvider>(context, listen: false)
                            .deleteProduct(widget.products);
                      });
                    },
                    child: Icon(Icons.close)),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .005,
            ),
            Text(
              widget.products.amount!,
              style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'fonts/Gilroy-Medium.ttf',
                  color: Colors.grey),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .29,
                  height: MediaQuery.of(context).size.height * .05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if(widget.products.quantity>1){
                            Provider.of<CartProvider>(context, listen: false)
                                .decrementProdCartQuantity(
                                widget.products.title!);
                          }
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * .1,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.withOpacity(.4),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              size: 24,
                              color: widget.products.quantity > 1
                                  ? ColorsData.basicColor
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .02,
                      ),
                      Center(
                          child: Text(
                        '${ widget.products.quantity}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Gilroy',
                            fontSize: 15),
                      )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .02,
                      ),
                      GestureDetector(
                        onTap: () {
                          Provider.of<CartProvider>(context, listen: false)
                              .incrementProdCartQuantity(
                                  widget.products.title!);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * .1,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.withOpacity(.4),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: 24,
                              color: ColorsData.basicColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '\$${totalPrice}',
                  style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'fonts/Gilroy-Bold.ttf',
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
      ),
    );

  }
}


