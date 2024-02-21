import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/features/myclub_card/view/widget/myclub_card_view_body.dart';
class MyClubCardView extends StatelessWidget {
  const MyClubCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black.withOpacity(.5)
        ),
        title: Text('MyClub Card'),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('asset/account/Egypt_flag_300.png'),
          ),
          SizedBox(width: MediaQuery.of(context).size.width *.02,),
        ],
      ),
      body: MyClubCardViewBody(),
    );
  }
}
