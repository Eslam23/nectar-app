import 'package:flutter/material.dart';
import 'package:untitled/basic_container.dart';
import 'package:untitled/features/shop/shop_view.dart';
import 'package:untitled/utilies/color_data.dart';

import '../../../../carrot_image.dart';
import '../../../../tab_screen.dart';
import '../../../signup/signup_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controllEmail = TextEditingController();
    TextEditingController _controllPassword = TextEditingController();
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .05,
          right: MediaQuery.of(context).size.width * .05,
          top: MediaQuery.of(context).size.height * .05),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarrotImage(wid: MediaQuery.of(context).size.width * .1,heig: MediaQuery.of(context).size.height * .2,),
            SizedBox(
              height: MediaQuery.of(context).size.height * .06,
            ),
            Text(
              'Loging',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Gilroy'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Text(
              'Enter your emails and password',
              style: TextStyle(
                  fontFamily: 'fonts/Gilroy-Medium.ttf',
                  fontSize: 14,
                  color: Colors.grey),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .08,
            ),
            Text(
              'Email',
              style: TextStyle(
                  fontSize: 16, fontFamily: 'Gilroy', color: Colors.grey),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: _controllEmail,
                decoration: InputDecoration(
                  enabled: true,
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            Text(
              'Password',
              style: TextStyle(
                  fontSize: 16, fontFamily: 'Gilroy', color: Colors.grey),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                controller: _controllPassword,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.visibility_off_sharp,
                    color: Colors.grey,
                  ),
                  enabled: true,
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontSize: 14, fontFamily: 'fonts/Gilroy-Medium.ttf'),
                )),
            Center(
              child: BasicContainer(
                  wid: MediaQuery.of(context).size.width * .84,
                  heig: MediaQuery.of(context).size.height * .09,
                  fun: () {Navigator.push(context, MaterialPageRoute(builder: (_)=>const TabScreen()));},
                  edgeInsets: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .04,
                  ),
                  txtButton: 'Log in'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *.018,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t have an account? '),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const SignupView()));
                  },
                  child: Text(
                    'Signup',
                    style: TextStyle(color: ColorsData.basicColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
