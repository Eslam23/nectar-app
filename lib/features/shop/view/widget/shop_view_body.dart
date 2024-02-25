import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/api_actions/provider_method.dart';

import 'package:untitled/features/product_details/product_details_view.dart';
import 'package:untitled/features/shop/view/widget/best_seller_list.dart';
import 'package:untitled/features/shop/view/widget/exclusive_offer_list.dart';
import 'package:untitled/features/shop/view/widget/row_address.dart';
import 'package:untitled/features/shop/view/widget/row_header.dart';
import 'package:untitled/features/shop/view/widget/textfield_search.dart';
import 'package:untitled/tab_screen.dart';
import 'package:untitled/utilies/styles.dart';
import '../../../../carrot_image.dart';
import '../../../../core/api_actions/cart_provider.dart';
import '../../../../core/api_actions/models.dart';
import 'gridview_announace.dart';
import 'groceries_container.dart';
import 'item_container.dart';
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
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      Provider.of<ProviderProduct>(context,listen: false).fetchAllProducts();
     Provider.of<ProviderProduct>(context,listen: false).getBestSellerProducts();
     Provider.of<ProviderProduct>(context,listen: false).getExclusiveOffer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
              TextFieldSearch(
                fun: (String value) {
                }, nav: () {
                  setState(() {
                    Navigator.push(context,MaterialPageRoute(builder: (_)=>TabScreen(currentPageByIndex: 1)) );
                  });

                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .025,
              ),
              ListViewSales(),
              GridViewAnnouncement(),
              const RowHeader(
                txtHeader: 'Exclusive Offer',
                seeAll: 'See all',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .025,
              ),
              Consumer<ProviderProduct>(
          builder: (context,value,index){
            final prov=value.getBestSellerProducts();
            if(prov.isNotEmpty){
              return SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .28,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ProductDetailsView(
                                  products: prov[index],
                                )));
                      },
                      child: ItemContainer(products: prov[index],
                        
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: prov.length,
                ),
              );
            }else{
              return const SizedBox(height:20,width:20,child: CircularProgressIndicator(strokeWidth: 3,));

            }
          },

        ),
           //  ExclusiveOfferList(products: widget.products,),
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
        Consumer<ProviderProduct>(
          builder: (context,value,index){
            final prov=value.getExclusiveOffer();
            if(prov.isNotEmpty){
              return SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .28,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ProductDetailsView(
                                 products: prov[index],
                                )));
                      },
                      child: ItemContainer(
                        products: prov[index],
                     ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: prov.length,
                ),
              );
            }else{
              return const SizedBox(height:20,width:20,child: CircularProgressIndicator(strokeWidth: 3,));
            }
          },

        ),
             // BestSellerList(products:  widget.products,),
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
                    return GroceriesContainer(
                      img: ListsData.listCategoryGroceries[index]['image'],
                      name: ListsData.listCategoryGroceries[index]['name'],
                    );
                  },
                  itemCount: ListsData.listCategoryGroceries.length,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .025,
              ),
             /* SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .28,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ProductDetailsView(
                                      name: ListsData.listGroceries[index]
                                          ['name'],
                                      price: ListsData.listGroceries[index]
                                          ['price'],
                                      size: ListsData.listGroceries[index]
                                          ['size'],
                                    )));
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
              ),*/
            ],
          ),
        ),

    );
  }
}
