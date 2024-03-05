import 'package:flutter/material.dart';

import '../../../../utilies/color_data.dart';

class ButtonAccount extends StatelessWidget {
  const ButtonAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .02),
      width: MediaQuery.of(context).size.width * .6,
      height: MediaQuery.of(context).size.height * .07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: Colors.grey.withOpacity(.3),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .06,
                right: MediaQuery.of(context).size.width * .16),
            child: Center(
                child: Icon(
              Icons.logout,
              size: 24,
              color: ColorsData.basicColor,
            )),
          ),
          Text(
            'Log Out',
            style: TextStyle(
                color: ColorsData.basicColor,
                fontSize: 16,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
