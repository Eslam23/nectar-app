import 'package:flutter/material.dart';

class GridViewAnnouncement extends StatelessWidget {
  const GridViewAnnouncement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String>  img=[
      'asset/home/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png',
      'asset/home/pngfuel 1.png',
      'asset/cart/Group 6858.png',
      'asset/favourite/pngfuel 12.png',
      'asset/favourite/pngfuel 13.png',
      'asset/favourite/pngfuel 14.png',
      'asset/favourite/tree-top-juice-apple-grape-64oz 1.png',
      'asset/favourite/tree-top-juice-apple-grape-64oz 1 (1).png',
      'asset/beverage/pngfuel 11.png',
      'asset/cart/Group 6858.png',
      'asset/favourite/pngfuel 14.png',
      'asset/home/pngfuel 1.png',
    ];
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height *.4,
      child: GridView.builder(
        itemCount: img.length,
        shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 12,
            crossAxisCount: 4,
            mainAxisExtent: 75,
            mainAxisSpacing: 13
          ),
          itemBuilder: (context, index) {
            return CircleAvatar(
              backgroundImage: AssetImage(img[index]),
              //backgroundColor: Colors.red,
            );
          }),
    );
  }
}
