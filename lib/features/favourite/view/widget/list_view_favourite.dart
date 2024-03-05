import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/api_actions/favourite_provider.dart';

import '../../../../core/api_actions/cart_provider.dart';
import '../../../../utilies/color_data.dart';

class ListViewFavourite extends StatefulWidget {
  const ListViewFavourite({Key? key}) : super(key: key);

  @override
  State<ListViewFavourite> createState() => _ListViewFavouriteState();
}

class _ListViewFavouriteState extends State<ListViewFavourite> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavouriteProvider>(
      builder: (context, value, child) {
        final prov = value.favouriteProduct;
        if (prov.isNotEmpty) {
          return Expanded(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width *.04,top: MediaQuery.of(context).size.height *.02),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 12,
                mainAxisExtent: 174,
            ),
            itemCount: prov.length,
            itemBuilder: (context, index) {
              final prod = prov[index];
              return Container(
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * .03),
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .01,
                    right: MediaQuery.of(context).size.width * .025,
                    left: MediaQuery.of(context).size.width * .025,
                    bottom: MediaQuery.of(context).size.height * .002),
                width: MediaQuery.of(context).size.width * .4,
              //  height: MediaQuery.of(context).size.height * .1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    border: Border.all(color: const Color(0xFFE2E2E2))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width * .3,
                          height: MediaQuery.of(context).size.height * .08,
                          child: Image.network(
                            prod.image!.url!,
                            fit: BoxFit.contain,
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Text(
                      prod.title!,
                      style: const TextStyle(
                        height: 2,
                          fontSize: 14,
                          fontFamily: 'fonts/Gilroy-Bold.ttf',
                          fontWeight: FontWeight.w500),
                    ),

                    Text(
                      prod.amount!,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          height: 1.5,
                          fontFamily: 'fonts/Gilroy-Medium.ttf'),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${prod.newPrice}',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Gilroy'),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * .11,
                          height: MediaQuery.of(context).size.height * .055,
                          decoration: BoxDecoration(
                            color: ColorsData.basicColor,
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Provider.of<CartProvider>(context, listen: false)
                                  .addProduct(prod);
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
              );
              /* Dismissible(
                    key: Key('${prod}'),
                    onDismissed: (DismissDirection direction){
                      if(direction == DismissDirection.endToStart) {
                        print('99999');
                      }else{
                        print('222222');
                      }
                      setState(() {
                        Provider.of<FavouriteProvider>(context, listen: false)
                            .deleteFavouriteProduct(prod);
                      });
                      },
                    confirmDismiss: (DismissDirection direction)  {
                      return  showDialog(
                          context: context,
                          builder: (ctx) {
                            return AlertDialog(
                              title: const Text('Delete Confiremation'),
                              content: const Text(
                                  'Are you sure you want to delete this item?'),
                              actions: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop(true);
                                  },
                                  child: Container(
                                      width: 80,
                                      height: 30,
                                      color: Colors.red,
                                      child: Center(
                                          child: const Text(
                                            'Delete',
                                            style:
                                            TextStyle(color: Colors.white),
                                          ))),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop(false);
                                  },
                                  child: Container(
                                      width: 80,
                                      height: 30,
                                      color: Colors.blue,
                                      child: Center(
                                          child: const Text(
                                            'Cancel',
                                            style:
                                            TextStyle(color: Colors.white),
                                          ))),
                                ),
                              ],
                            );
                          });
                    },
                    background: Container(
                      color: Colors.red,
                      child: Icon(
                        Icons.delete,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    child:ListTileItem(product: prod,),
                  );*/
            },
          ));
        } else {
          return Expanded(
              child: const Center(
            child: Text(
              'No favourite product !!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
          ));
        }
      },
    );
  }
}
