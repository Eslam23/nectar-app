import 'package:flutter/material.dart';

import '../../../../utilies/color_data.dart';

class GridProductType extends StatelessWidget {
  const GridProductType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .05,
            right: MediaQuery.of(context).size.width * .05,
          ),
          shrinkWrap: true,
          physics: ScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                    child: Image.asset(
                      'asset/beverage/pngfuel 11.png',
                      fit: BoxFit.contain,
                      height: MediaQuery.of(context).size.height *.1,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height *.01,
                  ),
                  const Text(
                    'Organic Banana',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'fonts/Gilroy-Bold.ttf',
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height *.001,
                  ),
                  const Text(
                    '1kg, Priceg',
                    style: TextStyle(
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
                      const Text(
                        '\$4.99',
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
  }
}
