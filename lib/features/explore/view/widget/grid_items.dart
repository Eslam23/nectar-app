import 'package:flutter/material.dart';
import 'package:untitled/utilies/color_data.dart';

import '../../../product_type/product_type_view.dart';

class GridItems extends StatelessWidget {
  const GridItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> itemContent = [
      {'image': ''},
    ];
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisExtent: 170,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductTypeView()));}
            ,child: Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .1,
                  right: MediaQuery.of(context).size.width * .1,
                  top: MediaQuery.of(context).size.height * .04,
                  bottom: MediaQuery.of(context).size.height * .02,
                ),
                decoration: BoxDecoration(
                    color: ColorsData.basicColor.withOpacity(.1),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: ColorsData.basicColor, width: 1)),
                child: Column(
                  children: [
                    Image.asset(
                      'asset/home/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*.02,),
                    Text(
                      'Frash Fruits  & Vegetable',
                      textAlign: TextAlign.center,
                      style: TextStyle(
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
