import 'package:flutter/material.dart';
import 'package:untitled/utilies/styles.dart';

import '../../../product_type/product_type_view.dart';

class GridItems extends StatelessWidget {
  const GridItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
          physics: const ScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: ListsData.itemContentExplore.length,
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height*.02,
              top: MediaQuery.of(context).size.height*.02,
          ),
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisExtent: 170,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>const ProductTypeView()));}
            ,child: Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .1,
                  right: MediaQuery.of(context).size.width * .1,
                  top: MediaQuery.of(context).size.height * .03,
                  bottom: MediaQuery.of(context).size.height * .01,
                ),
                decoration: BoxDecoration(
                    color: ListsData.itemContentExplore[index]['colorContainer'],
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: ListsData.itemContentExplore[index]['colorBorder'], width: 1)),
                child: Column(
                  children: [
                    Image.asset(
                      ListsData.itemContentExplore[index]['image'],
                      fit: BoxFit.contain,
                      height: MediaQuery.of(context).size.height*.09,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.02,),
                    Text(
                      ListsData.itemContentExplore[index]['category'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'fonts/Gilroy-Bold.ttf'),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
