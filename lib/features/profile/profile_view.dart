import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/features/profile/view/widget/profile_view_body.dart';
class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black.withOpacity(.5)
        ),
        centerTitle: true,
        title: Text('Profile'),
      ),
      body: ProfileViewBody(),
    );
  }
}
