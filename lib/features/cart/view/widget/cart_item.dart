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
  int count = 1;

  increase() {
    setState(() {
      count++;
    });
  }

  decrease() {
    if (count > 1) {
      setState(() {
        count--;
      });
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    int price = widget.products.price!;
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
                          Provider.of<CartProvider>(context, listen: false)
                              .decrementProdCartQuantitt(
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
                              Icons.remove,
                              size: 24,
                              color: count > 1
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
                        '${widget.products.newPrice}',
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
                              .incrementProdCartQuantitt(
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
    /* Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin:
      EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 125,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                image: DecorationImage(
                    image: NetworkImage(widget.products.image!.url!),
                    fit: BoxFit.fitHeight)),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .6,
            height: MediaQuery.of(context).size.height * .2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment:
              MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.products.title!,
                      style: TextStyle(
                          color: Colors.black, fontSize: 22),
                    ),
                    Text(
                      '\$${(widget.products.price)!*(count)}',
                      style: TextStyle(
                          color:
                          Theme.of(context).primaryColor,
                          fontSize: 20),
                    )
                  ],
                ),
                Text(
                  '\$${widget.products.price}',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20),
                ),
                Container(
                  child: Row(
                    children: [
                      buildContainerPress(
                        context,
                        InkWell(
                          onTap: (){increase();},
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Theme.of(context).primaryColor,
                      ),
                      buildContainerPress(
                          context,
                          Text(
                            '${count}',
                            style: TextStyle(
                              color: Theme.of(context)
                                  .primaryColor,
                              fontSize: 16,
                            ),
                          ),
                          Colors.white),
                      buildContainerPress(
                        context,
                        InkWell(
                          onTap: (){decrease();},
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );*/
  }
}
 /* Container buildContainerPress(
      BuildContext context, Widget child, Color colContainer) {
    return Container(
      width: 30,
      height: 30,
      margin: EdgeInsets.only(right: 12, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colContainer,
        border: Border.all(color: Theme.of(context).primaryColor),
      ),
      child: Center(
        child: child,
      ),
    );
  }*/

