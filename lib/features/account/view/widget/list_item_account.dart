import 'package:flutter/material.dart';
import 'package:untitled/features/account/view/help_body.dart';
import 'package:untitled/features/account/view/mybill_body.dart';
import 'package:untitled/features/account/view/privacy_body.dart';

import '../../../profile/profile_view.dart';
import '../../../scan_code/scan_code_view.dart';
import '../about_body.dart';

class ListItemAccount extends StatelessWidget {
  const ListItemAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool val = true;
    List<Map<String, dynamic>> listTileAccount = [
      {
        'title': 'Account',
        'icon': Icon(
          Icons.person_3_rounded,
          size: 20,
        ),
        'trail': Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
        'onPress': () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => ProfileView()));
        }
      },
      {
        'title': 'Notifications',
        'icon': Icon(
          Icons.local_mall_outlined,
          size: 20,
        ),
        'trail': Switch(
          onChanged: (value) {},
          value: val,
        ),
      },
      {
        'title': 'Scan & Go',
        'icon': Icon(
          Icons.medical_information_outlined,
          size: 20,
        ),
        'trail': Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
        'onPress': () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => ScanCodeView()));
        }
      },
      // {
      //   'title': 'MyClub Card',
      //   'icon': Icon(
      //     Icons.location_on_outlined,
      //     size: 20,
      //   ),
      //   'onPress': () {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (_) => MyClubCardView()));
      //   }
      // },
      {
        'title': 'Language',
        'icon': Icon(
          Icons.payment_outlined,
          size: 20,
        ),
        'trail': Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
      },
      {
        'title': 'Track Delivery',
        'icon': Icon(
          Icons.sell_outlined,
          size: 20,
        ),
        'trail': Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
      },
      {
        'title': 'My Bill ',
        'icon': Icon(
          Icons.notifications,
          size: 20,
        ),
        'trail': Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
        'onPress': () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => MyBillBody()));
        }
      },
      {
        'title': 'About',
        'icon': Icon(
          Icons.help_outline,
          size: 20,
        ),
        'trail': Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
        'onPress': () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => AboutBody()));
        }
      },
      {
        'title': 'Help & Support ',
        'icon': Icon(
          Icons.info_outline,
          size: 20,
        ),
        'trail': Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
        'onPress': () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => HelpBody()));
        }
      },
      {
        'title': 'Privacy & Security ',
        'icon': Icon(
          Icons.info_outline,
          size: 20,
        ),
        'trail': Icon(
          Icons.arrow_forward_ios,
          size: 20,
        ),
        'onPress': () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => PrivacyBody()));
        }
      },
    ];

    return Expanded(
        child: ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          children: [
            GestureDetector(
              onTap: listTileAccount[index]['onPress'],
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .063,
                child: ListTile(
                    title: Text(
                      listTileAccount[index]['title'],
                      style: const TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    leading: listTileAccount[index]['icon'],
                    trailing: listTileAccount[index]['trail']),
              ),
            ),
            Divider(
              indent: MediaQuery.of(context).size.width * .04,
              endIndent: MediaQuery.of(context).size.width * .04,
              height: MediaQuery.of(context).size.height * .01,
            )
          ],
        );
      },
      itemCount: listTileAccount.length,
    ));
  }
}
