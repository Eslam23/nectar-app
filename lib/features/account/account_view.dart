import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled/features/account/view/widget/account_view_body.dart';
class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        return exit(0);
      },
      child: const Scaffold(
        body: AccountViewBody(),
      ),
    );
  }
}
