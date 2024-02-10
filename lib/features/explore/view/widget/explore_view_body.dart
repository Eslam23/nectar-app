import 'package:flutter/material.dart';

import '../../../shop/view/widget/textfield_search.dart';
import 'grid_items.dart';
class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .05,
          right: MediaQuery.of(context).size.width * .05,
          top: MediaQuery.of(context).size.height * .05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         const  Text('Find Products',style: TextStyle(fontFamily:'fonts/Gilroy-Bold.ttf' ,fontWeight:FontWeight.w600,fontSize: 20),),
          SizedBox(height: MediaQuery.of(context).size.height *.03,),
         const TextFieldSearch(),
        const   GridItems(),
        ],
      ),
    );
  }
}
