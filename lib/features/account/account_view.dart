import 'package:flutter/material.dart';
import 'package:untitled/features/account/view/widget/account_view_body.dart';
import 'package:untitled/utilies/color_data.dart';

class AccountView extends StatelessWidget {
  final int currentPageByIndex;
  const AccountView({Key? key, required this.currentPageByIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Setting'),
        leadingWidth: 40,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.only(left: 4, top: 0, bottom: 0),
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * .04),
            child: Icon(
              Icons.arrow_back_ios,
              size: 12,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: ColorsData.basicColor, width: .5)),
          ),
        ),
      ),
      body: AccountViewBody(),
    );
  }
}
