import 'package:flutter/material.dart';

class ListExpansion extends StatelessWidget {
  const ListExpansion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> expansiontile = [
      {
        'title': buildText('Product Detail'),
        'subtitle': Text(
            'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.'),
        'widget': Text('')
      },
      {
        'title': buildText('Nutritions'),
        'subtitle': Text(
            'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.'),
        'widget': Container(
          width: MediaQuery.of(context).size.width *.11,
          height: MediaQuery.of(context).size.height *.03,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey,
          ),
          child: Center(
            child: Text('100gr',style: TextStyle(fontSize: 9,fontWeight: FontWeight.w600,fontFamily: 'Gilroy'),),
          ),
        )
      },
      {
        'title': buildText('Review'),
        'subtitle': Text(
            'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.'),
        'widget': Row(
          children: [
            buildIcon(),
            buildIcon(),
            buildIcon(),
            buildIcon(),
            buildIcon(),
          ],
        ),
      },
    ];
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .292,
      child: ListView.builder(
          itemCount: expansiontile.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              leading: expansiontile[index]['title'],
              tilePadding: EdgeInsets.only(right: 10),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(''),
                  expansiontile[index]['widget'],
                ],
              ),
              children: [
                expansiontile[index]['subtitle'],
              ],
            );
          }),
    );
  }

  Icon buildIcon() {
    return Icon(
            Icons.star,
            color: Color(0xFFF3603F),
            size: 14,
          );
  }

  Text buildText(String txt) => Text(
        txt,
        style: TextStyle(
            fontSize: 16, fontFamily: 'Gilroy', fontWeight: FontWeight.w600),
      );
}
