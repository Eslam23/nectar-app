import 'package:flutter/material.dart';
import 'package:untitled/features/account/view/widget/account_info.dart';

import 'button_account.dart';
import 'list_item_account.dart';
class AccountViewBody extends StatelessWidget {
  const AccountViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .05),
      child: const Column(
        children: [
          AccountInfo(),
          Divider(),
          ListItemAccount(),
          ButtonAccount(),
        ],
      ),
    );
  }
}
