import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/features/product_details/view/widget/counter_price.dart';

import '../../../../core/api_actions/favourite_provider.dart';
import '../../../../core/api_actions/models.dart';
import '../../../shop/view/widget/exclusive_offer_list.dart';
import '../../../shop/view/widget/row_header.dart';
import 'image_slider.dart';

class ProductDetailsViewBody extends StatefulWidget {
  final Products products;

  const ProductDetailsViewBody({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  State<ProductDetailsViewBody> createState() => _ProductDetailsViewBodyState();
}

class _ProductDetailsViewBodyState extends State<ProductDetailsViewBody> {
  bool choose = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * .02,
          left: MediaQuery.of(context).size.width * .05,
          right: MediaQuery.of(context).size.width * .05,
          top: MediaQuery.of(context).size.height * .05),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ImageSlider(
                  img: widget.products.image!.url!,
                ),
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  size: 18,
                                ),
                                Positioned(
                                    bottom: 10,
                                    left: 6,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.red,
                                      radius: 8,
                                      child: Text(
                                        '${2}',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            height: 1.5),
                                      ),
                                    )),
                              ],
                            ),
                            // Icon(Icons.favorite_border),
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.share,
                              size: 18,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              choose
                                  ? Provider.of<FavouriteProvider>(context,
                                          listen: false)
                                      .addFavoriteProduct(widget.products)
                                  : Provider.of<FavouriteProvider>(context,
                                          listen: false)
                                      .deleteFavouriteProduct(widget.products);
                              setState(() {
                                choose = !choose;
                              });
                            },
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              child: choose
                                  ? Icon(
                                      Icons.favorite_border,
                                      size: 18,
                                    )
                                  : Icon(
                                      Icons.favorite,
                                      size: 18,
                                      color: Colors.red,
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Text(
              widget.products.title!,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                  fontFamily: 'fonts/Gilroy-Bold.ttf'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.products.amount!,
                  style: const TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                Text(
                  ' . 3.4K ',
                  style: const TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                Icon(
                  Icons.star_rate,
                  color: Color(0xFFF3603F),
                  size: 20,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            CounterPrice(
              price: widget.products.newPrice!,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            const Divider(),
            ExpansionTile(
              leading: Text(
                'Product Detail',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600),
              ),
              tilePadding: EdgeInsets.only(right: 10),
              title: Text(''),
              children: [
                Text(
                    'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.'),
              ],
            ),
            //ListExpansion(),
            const RowHeader(
              txtHeader: 'People viewed this item',
              seeAll: 'See all',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .025,
            ),
            ExclusiveOfferList(
              products: widget.products,
            ),

          ],
        ),
      ),
    );
  }
}
