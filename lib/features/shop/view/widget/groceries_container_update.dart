import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/api_actions/category/provider_method.dart';

class GroceriesContainerUpdate extends StatelessWidget {
  const GroceriesContainerUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderCategories>(
      builder: (context, value, child) {
        final prov = value.category;
        if (prov.isEmpty) {
          return const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                strokeWidth: 3,
              ));
        } else {
          return SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .165,
            child: ListView.builder(
              itemCount: prov.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .01,
                    bottom: MediaQuery.of(context).size.height * .02,
                    right: MediaQuery.of(context).size.width * .02,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .18,
                        height: MediaQuery.of(context).size.height * .1,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              prov[index].image!.url!,
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Text(
                        prov[index].title!,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            textBaseline: TextBaseline.alphabetic,
                            decorationThickness: 10,
                            decorationStyle: TextDecorationStyle.dashed,
                            overflow: TextOverflow.fade),
                      )
                    ],
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
