import 'package:flutter/material.dart';
import 'package:untitled/basic_container.dart';
import 'package:untitled/features/login/login_view.dart';

import '../../../../carrot_image.dart';
import '../../../../utilies/color_data.dart';
import '../../../shop/shop_view.dart';
class SignupViewBody extends StatelessWidget {
  const SignupViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controllUser=TextEditingController();
    TextEditingController _controllEmail=TextEditingController();
    TextEditingController _controllPassword=TextEditingController();
    return  Padding(
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
              'Sign Up',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Gilroy'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Text(
              'Enter your credentials to continue',
              style: TextStyle(
                  fontFamily: 'fonts/Gilroy-Medium.ttf',
                  fontSize: 14,
                  color: Colors.grey),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .06,
            ),
            Text(
              'Username',
              style: TextStyle(
                  fontSize: 16, fontFamily: 'Gilroy', color: Colors.grey),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
              child: TextField(
                keyboardType: TextInputType.text,
                controller: _controllUser,
                decoration: InputDecoration(
                  enabled: true,
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
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
              height: MediaQuery.of(context).size.height * .03,
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
            Text('By continuing you agree to our Terms of Service\nand Privacy Policy.'),
            Center(
              child: BasicContainer(
                  wid: MediaQuery.of(context).size.width * .84,
                  heig: MediaQuery.of(context).size.height * .09,
                  fun: () {Navigator.push(context, MaterialPageRoute(builder: (_)=>const ShopView()));},
                  edgeInsets: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .04,
                  ),
                  txtButton: 'Sign Up'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *.018,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account? '),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const LoginView()));
                  },
                  child: Text(
                    'Login',
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
