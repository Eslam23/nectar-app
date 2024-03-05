import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/api_actions/provider_method.dart';
import 'package:untitled/utilies/styles.dart';

import '../../../../utilies/color_data.dart';

class GridProductType extends StatelessWidget {
  final String title;
  const GridProductType({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Consumer<ProviderProduct>(
      builder: (context,value,child){
        final prod=value.getProductsByCategory(title);
        if(prod.isNotEmpty){
          return Expanded(
            child: GridView.builder(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .05,
                  right: MediaQuery.of(context).size.width * .05,
                  bottom: MediaQuery.of(context).size.height * .02,
                  top: MediaQuery.of(context).size.height * .02,
                ),
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: prod.length,
                gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisExtent: 210,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .04,
                      right: MediaQuery.of(context).size.width * .04,
                      top: MediaQuery.of(context).size.height * .02,
                      // bottom: MediaQuery.of(context).size.height * .01,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.grey.withOpacity(.4), width: 1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.network(
                            prod[index].image!.url!,
                            fit: BoxFit.contain,
                            height: MediaQuery.of(context).size.height *.1,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height *.01,
                        ),
                        Text(
                          prod[index].title!,
                          style:const TextStyle(
                              fontSize: 14,
                              fontFamily: 'fonts/Gilroy-Bold.ttf',
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height *.001,
                        ),
                        Text(
                          prod[index].amount!,
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
                              '\$${prod[index].newPrice!}',
                              style:const TextStyle(
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
                              child:const Center(
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          );
        }else{
          return const SizedBox(height:20,width:20,child: CircularProgressIndicator(strokeWidth: 3,));

        }
      },

    );
  }
}
