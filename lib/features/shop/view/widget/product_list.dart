import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/api_actions/models.dart';
import 'package:untitled/core/api_actions/offer/provider_offer.dart';
import 'package:untitled/core/api_actions/provider_method.dart';

import '../../../../core/api_actions/cart_provider.dart';
import '../../../../core/api_actions/offer/model.dart';
import '../../../../utilies/color_data.dart';
import '../../../product_details/product_details_view.dart';
class ProductsList extends StatelessWidget {
  final Products product;
  const ProductsList({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Consumer<ProviderProduct>(
      builder: (context,value,child){
        final prov=value.products;
        if(prov.isNotEmpty){
          return SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductDetailsView(products: prov[index])));
                  },
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
                              child: Image.network(prov[index].image!.url!,fit: BoxFit.contain,)

                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height *.03,
                        ),
                        Text(
                          prov[index].title!,
                          style:const TextStyle(
                              fontSize: 14,
                              fontFamily: 'fonts/Gilroy-Bold.ttf',
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height *.01,
                        ),
                        Text(
                          prov[index].amount!,
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
                              '\$${prov[index].price!}',
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
                                  Provider.of<CartProvider>(context,listen: false).addProduct(prov[index]);
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
                  /* ItemContainer(
                           products: widget.products,
                        ),*/
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
    );
  }
}
