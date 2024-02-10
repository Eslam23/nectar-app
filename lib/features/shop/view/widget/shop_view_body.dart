import 'package:flutter/material.dart';
import 'package:untitled/features/product_details/product_details_view.dart';
import 'package:untitled/features/shop/view/widget/row_address.dart';
import 'package:untitled/features/shop/view/widget/row_header.dart';
import 'package:untitled/features/shop/view/widget/textfield_search.dart';
import 'package:untitled/utilies/styles.dart';
import '../../../../carrot_image.dart';
import 'groceries_container.dart';
import 'item_container.dart';

class ShopViewBody extends StatefulWidget {
  const ShopViewBody({
    Key? key,
  }) : super(key: key);

  @override
  State<ShopViewBody> createState() => _ShopViewBodyState();
}

class _ShopViewBodyState extends State<ShopViewBody> {

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
            const RowAddress(),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductDetailsView()));
                    },
                    child: ItemContainer(
                      img:ListsData.listExclusive[index]['image'],
                      price: ListsData.listExclusive[index]['price'],
                      size: ListsData.listExclusive[index]['size'],
                      name: ListsData.listExclusive[index]['name'],
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: ListsData.listExclusive.length,
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
                  return ItemContainer(
                    img: ListsData.listBest[index]['image'],
                    price: ListsData.listBest[index]['price'],
                    size: ListsData.listBest[index]['size'],
                    name: ListsData.listBest[index]['name'],
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: ListsData.listBest.length,
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
                  return GroceriesContainer(img: ListsData.listCategoryGroceries[index]['image'], name:  ListsData.listCategoryGroceries[index]['name'],);
                },
                itemCount: ListsData.listCategoryGroceries.length,
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
                  return ItemContainer(
                    img: ListsData.listGroceries[index]['image'],
                    price: ListsData.listGroceries[index]['price'],
                    size: ListsData.listGroceries[index]['size'],
                    name: ListsData.listGroceries[index]['name'],
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: ListsData.listGroceries.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
