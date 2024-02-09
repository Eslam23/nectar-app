import 'package:flutter/material.dart';
import 'package:untitled/basic_container.dart';
import 'package:untitled/features/favourite/view/widget/list_view_favourite.dart';

class FavouriteViewBody extends StatelessWidget {
  const FavouriteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .05),
      child: Column(
        children: [
         const Text(
            'Favourite',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'fonts/Gilroy-Bold.ttf',
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
         const  Divider(),
        const  ListViewFavourite(),
          BasicContainer(
            wid: MediaQuery.of(context).size.width * .84,
            heig: MediaQuery.of(context).size.height * .09,
            fun: () {
              //Navigator.push(context, MaterialPageRoute(builder: (_)=>const TabScreen()));
            },
            edgeInsets: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .02,
              bottom: MediaQuery.of(context).size.height * .02,
            ),
            txtButton: 'Add All To Cart',
          ),


        ],
      ),
    );
  }
}
