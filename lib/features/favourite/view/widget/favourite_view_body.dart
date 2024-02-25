import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/basic_container.dart';
import 'package:untitled/core/api_actions/cart_provider.dart';
import 'package:untitled/core/api_actions/favourite_provider.dart';
import 'package:untitled/core/api_actions/models.dart';
import 'package:untitled/features/favourite/view/widget/list_view_favourite.dart';

class FavouriteViewBody extends StatefulWidget {
  final List<Products> products;
  const FavouriteViewBody({Key? key, required this.products}) : super(key: key);

  @override
  State<FavouriteViewBody> createState() => _FavouriteViewBodyState();
}

class _FavouriteViewBodyState extends State<FavouriteViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .05),
      child: Column(
        children: [
          const Text(
            'Favourite',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'fonts/Gilroy-Bold.ttf',
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          const Divider(
            height: 0,
          ),
          const ListViewFavourite(),
          BasicContainer(
            wid: MediaQuery.of(context).size.width * .84,
            heig: MediaQuery.of(context).size.height * .09,
            fun: () {
              Provider.of<CartProvider>(context, listen: false)
                  .addAllProduct(widget.products);
            },
            edgeInsets: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .02,
              bottom: MediaQuery.of(context).size.height * .02,
            ),
            txtButton: 'Add All To Cart',
          ),
        ],
      ),
    );
  }
}
