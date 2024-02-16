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
  const ShopViewBody({Key? key,}) : super(key: key);

  @override
  State<ShopViewBody> createState() => _ShopViewBodyState();
}

class _ShopViewBodyState extends State<ShopViewBody> {
  List<Map<String,dynamic>> foundItem=[];
  List<Map<String,dynamic>> item=ListsData.listExclusive;
  @override
  void initState() {
    foundItem=item;
    super.initState();
  }
  void _runFilter(String enteredKeyword){
    List<Map<String,dynamic>> results=[];
    if(enteredKeyword.isEmpty){
      results=item;
    }else{
      results=item.where((user) =>user['name'].toString().toLowerCase().contains(enteredKeyword.toLowerCase()) ).toList();
    }
    setState(() {
      foundItem=results;
    });
  }

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
            TextFieldSearch(fun: (String value) { _runFilter(value); },),
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
              height: MediaQuery.of(context).size.height * .28,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductDetailsView(name: foundItem[index]['name'],
                                price:  foundItem[index]['price'],size: foundItem[index]['size'],)));
                    },
                    child: ItemContainer(
                      img:foundItem[index]['image'],
                      price: foundItem[index]['price'],
                      size: foundItem[index]['size'],
                      name: foundItem[index]['name'],
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: foundItem.length,
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
              height: MediaQuery.of(context).size.height * .28,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductDetailsView(name: ListsData.listBest[index]['name'],
                                price:  ListsData.listBest[index]['price'],size: ListsData.listBest[index]['size'],)));
                    },
                    child: ItemContainer(
                      img: ListsData.listBest[index]['image'],
                      price: ListsData.listBest[index]['price'] ,
                      size: ListsData.listBest[index]['size'],
                      name: ListsData.listBest[index]['name'],
                    ),
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
              height: MediaQuery.of(context).size.height * .28,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductDetailsView(name: ListsData.listGroceries[index]['name'],
                                price:  ListsData.listGroceries[index]['price'],size: ListsData.listGroceries[index]['size'],)));
                    },
                    child: ItemContainer(
                      img: ListsData.listGroceries[index]['image'],
                      price: ListsData.listGroceries[index]['price'],
                      size: ListsData.listGroceries[index]['size'],
                      name: ListsData.listGroceries[index]['name'],
                    ),
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
