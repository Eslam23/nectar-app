import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'package:untitled/features/shop/view/widget/best_seller_list.dart';
import 'package:untitled/features/shop/view/widget/exclusive_offer_list.dart';
import 'package:untitled/features/shop/view/widget/product_list.dart';
import 'package:untitled/features/shop/view/widget/row_address.dart';
import 'package:untitled/features/shop/view/widget/row_header.dart';
import 'package:untitled/features/shop/view/widget/textfield_search.dart';
import 'package:untitled/tab_screen.dart';
import 'package:untitled/utilies/styles.dart';
import '../../../../carrot_image.dart';
import '../../../../core/api_actions/category/provider_method.dart';
import '../../../../core/api_actions/models.dart';
import '../../../../utilies/color_data.dart';

import 'groceries_container_update.dart';

import 'listview_sales.dart';

class ShopViewBody extends StatefulWidget {
  final Products products;
  const ShopViewBody({
    Key? key, required this.products,
  }) : super(key: key);

  @override
  State<ShopViewBody> createState() => _ShopViewBodyState();
}

class _ShopViewBodyState extends State<ShopViewBody> {

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * .02,
            left: MediaQuery.of(context).size.width * .05,
            right: MediaQuery.of(context).size.width * .05,
            top: MediaQuery.of(context).size.height * .04),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height *.08,
                  width: MediaQuery.of(context).size.width *.48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CarrotImage(
                        wid: MediaQuery.of(context).size.width * .07,
                        heig: MediaQuery.of(context).size.height * .05,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Icon(Icons.shopping_cart_outlined,size: 25,),
                            Positioned(
                                bottom: 15,
                                left: 10,
                                child: CircleAvatar(backgroundColor: Colors.red,radius: 10,child: Center(child: Text('${2}',style: TextStyle(color: Colors.white,fontSize: 14,height: 1.5),)),)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .002,
              ),
              const RowAddress(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .02,
              ),
              TextFieldSearch(
                fun: (String value) {
                }, nav: () {
                  setState(() {
                    Navigator.push(context,MaterialPageRoute(builder: (_)=>TabScreen(currentPageByIndex: 1)) );
                  });

                }, child: Text(''),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .025,
              ),
              ListViewSales(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .025,
              ),
              const RowHeader(
                txtHeader: 'Groceries',
                seeAll: 'See all',
              ),

             GroceriesContainerUpdate(),
              //GridViewAnnouncement(),
              const RowHeader(
                txtHeader: 'Exclusive Offer',
                seeAll: 'See all',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .025,
              ),
             ExclusiveOfferList(products: widget.products,),
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

              BestSellerList(products:  widget.products,),
              SizedBox(
                height: MediaQuery.of(context).size.height * .025,
              ),
              const RowHeader(
                txtHeader: 'Products',
                seeAll: 'See all',
              ),
           ProductsList(product: widget.products,),
           /*   SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .3,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      *//*onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ProductDetailsView(
                                      name: ListsData.listGroceries[index]
                                          ['name'],
                                      price: ListsData.listGroceries[index]
                                          ['price'],
                                      size: ListsData.listGroceries[index]
                                          ['size'], products: ,
                                    )));
                      },*//*
                      child: Container(
                        margin: EdgeInsets.only(right: MediaQuery.of(context).size.width *.03,top:MediaQuery.of(context).size.height *.025 ),
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * .02,
                            right: MediaQuery.of(context).size.width * .025,
                            left: MediaQuery.of(context).size.width * .025,
                            bottom: MediaQuery.of(context).size.height * .003
                        ),
                        width: MediaQuery.of(context).size.width *.4,
                        height: MediaQuery.of(context).size.height *.28,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19),
                            border: Border.all(color: const Color(0xFFE2E2E2))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child:SizedBox(
                                  width: MediaQuery.of(context).size.width *.3,
                                  height: MediaQuery.of(context).size.height  *.08,
                                  child: Image.asset('asset/home/pngfuel 5.png',fit: BoxFit.contain,)

                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height *.03,
                            ),
                            Text(
                              'Chicken',
                              style:const TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'fonts/Gilroy-Bold.ttf',
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height *.01,
                            ),
                            Text(
                             ' 250gm',
                              style:const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontFamily: 'fonts/Gilroy-Medium.ttf'),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height *.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$${4.99}',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Gilroy'),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *.11,
                                  height: MediaQuery.of(context).size.height *.055,
                                  decoration: BoxDecoration(
                                    color: ColorsData.basicColor,
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child:GestureDetector(
                                    onTap: (){

                                     // Provider.of<CartProvider>(context,listen: false).addProduct(products);
                                    },
                                    child: const Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      *//* ItemContainer(
                         products: widget.products,
                      ),*//*
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: ListsData.listGroceries.length,
                ),
              ),*/
            ],
          ),
        ),

    );
  }
}
