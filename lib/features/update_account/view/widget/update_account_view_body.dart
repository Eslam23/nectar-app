/*
import 'package:flutter/material.dart';
import 'package:untitled/features/update_account/view/widget/gridview_account.dart';
import 'package:untitled/features/update_account/view/widget/topic_container.dart';
import 'package:untitled/utilies/color_data.dart';

import 'contact_container.dart';
import 'image_account.dart';
import 'listview_account.dart';

class UpdateAccountViewBody extends StatelessWidget {
  const UpdateAccountViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageAccount(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .07,
              right: MediaQuery.of(context).size.width * .07,
            ),
            width: double.infinity,
            color: Color(0xFFD9D9D9).withOpacity(.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What Can We help you with ?',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'TOP Articles - FAQ',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gilroy'),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                          fontSize: 14,
                          color: ColorsData.basicColor,
                          fontFamily: 'fonts/Gilroy-Medium.tt'),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                Divider(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                ListViewAccount(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                buildText('Topics'),
                TopicContainer(),
                buildText('Services'),
                GridViewAccount(),
                Text('You have any Qestions ?',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),
                ContactContainer(),

              ],
            ),
          ),
        ],
      ),
    );
  }

  Text buildText(String txt) => Text(
        txt,
        style: TextStyle(
            fontFamily: 'Gilroy', fontSize: 15, fontWeight: FontWeight.w600),
      );
}
*/
