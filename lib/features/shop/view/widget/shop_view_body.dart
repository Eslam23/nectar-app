import 'package:flutter/material.dart';
import 'package:untitled/features/product_details/product_details_view.dart';
import 'package:untitled/features/shop/view/widget/row_header.dart';
import 'package:untitled/features/shop/view/widget/textfield_search.dart';

import '../../../../carrot_image.dart';
import 'groceries_container.dart';
import 'item_container.dart';

class ShopViewBody extends StatelessWidget {
  const ShopViewBody({Key? key}) : super(key: key);

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
          children: [
            CarrotImage(
              wid: MediaQuery.of(context).size.width * .05,
              heig: MediaQuery.of(context).size.height * .05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .002,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.place_rounded,
                  size: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .01,
                ),
                const Text(
                  'Dhaka, Banassre',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Gilroy'),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            const TextFieldSearch(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .025,
            ),
            const RowHeader(
              txtHeader: 'Exclusive Offer',
              seeAll: 'See all',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .025,
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .31,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductDetailsView()));
                    },
                    child: ItemContainer(),
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: 4,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .025,
            ),
            const RowHeader(
              txtHeader: 'Best Selling',
              seeAll: 'See all',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .025,
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .31,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ItemContainer();
                },
                scrollDirection: Axis.horizontal,
                itemCount: 4,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .025,
            ),
            const RowHeader(
              txtHeader: 'Groceries',
              seeAll: 'See all',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .025,
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .13,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GroceriesContainer();
                },
                itemCount: 4,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .025,
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .31,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ItemContainer();
                },
                scrollDirection: Axis.horizontal,
                itemCount: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
