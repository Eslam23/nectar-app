import 'package:flutter/material.dart';
import 'package:untitled/utilies/styles.dart';

import '../../../product_type/product_type_view.dart';
import '../../../shop/view/widget/textfield_search.dart';
class ExploreViewBody extends StatefulWidget {
  const ExploreViewBody({Key? key}) : super(key: key);

  @override
  State<ExploreViewBody> createState() => _ExploreViewBodyState();
}

class _ExploreViewBodyState extends State<ExploreViewBody> {
  List<Map<String, dynamic>> foundItem = [];
  List<Map<String, dynamic>> item = ListsData.itemContentExplore;

  @override
  void initState() {
    foundItem = item;
    super.initState();
  }

  void filtered(String enteredKeyword) {
    List<Map<String, dynamic>> result = [];
    if (enteredKeyword.isEmpty) {
      result = item;
    } else {
      result = item.where((user) =>
          user['category'].toString().toLowerCase().contains(
              enteredKeyword.toLowerCase())).toList();
    }
    setState(() {
      foundItem=result;
    });
  }

@override
Widget build(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(
        left: MediaQuery
            .of(context)
            .size
            .width * .05,
        right: MediaQuery
            .of(context)
            .size
            .width * .05,
        top: MediaQuery
            .of(context)
            .size
            .height * .05),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Find Products', style: TextStyle(
            fontFamily: 'fonts/Gilroy-Bold.ttf',
            fontWeight: FontWeight.w600,
            fontSize: 20),),
        SizedBox(height: MediaQuery
            .of(context)
            .size
            .height * .03,),
        TextFieldSearch(fun: (String value) =>filtered(value), nav: () {  },),
        //GridItems(),
    Expanded(
      child: GridView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: foundItem.length,
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
                  color: foundItem[index]['colorContainer'],
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: foundItem[index]['colorBorder'], width: 1)),
              child: Column(
                children: [
                  Image.asset(
                    foundItem[index]['image'],
                    fit: BoxFit.contain,
                    height: MediaQuery.of(context).size.height*.09,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*.02,),
                  Text(
                    foundItem[index]['category'],
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
    ),
      ],
    ),
  );
}}
