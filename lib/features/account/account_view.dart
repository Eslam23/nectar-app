
import 'package:flutter/material.dart';
import 'package:untitled/features/account/view/widget/account_view_body.dart';
class AccountView extends StatelessWidget {
  final int currentPageByIndex;
  const AccountView({Key? key, required this.currentPageByIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AccountViewBody(),
    );
  }
}
