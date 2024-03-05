import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/utilies/color_data.dart';

class SignOutBody extends StatelessWidget {
  const SignOutBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {
        'icon': Icon(Icons.person),
        'title': 'Change Email',
      },
      {
        'icon': Icon(Icons.headphones),
        'title': 'Help & Support',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Account'),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                radius: 45,
              ),
              Positioned(
                bottom: 0,
                right: -1,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.photo_camera,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              )
            ],
          ),
          Text(
            'Mahmoud Mhassib',
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 20, height: 2.5),
          ),
          Text(
            'kingdom@gmail.com',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.grey.withOpacity(.9)),
          ),
          SizedBox(
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: items[index]['icon'],
                      title: Text(
                        items[index]['title'],
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      trailing: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                    ),
                    Divider(
                      indent: MediaQuery.of(context).size.width * .05,
                      endIndent: MediaQuery.of(context).size.width * .05,
                    ),
                  ],
                );
              },
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .05),
              width: MediaQuery.of(context).size.width * .7,
              height: MediaQuery.of(context).size.height * .06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: ColorsData.basicColor,
                  width: 2,
                ),
              ),
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.exit_to_app,
                        size: 20,
                        color: ColorsData.basicColor,
                      ),
                      Text(
                        'Sign In',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: ColorsData.basicColor),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
