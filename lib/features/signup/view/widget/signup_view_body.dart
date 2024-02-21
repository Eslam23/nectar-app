import 'package:flutter/material.dart';
import 'package:untitled/basic_container.dart';
import 'package:untitled/features/login/login_view.dart';
import 'package:untitled/tab_screen.dart';

import '../../../../carrot_image.dart';
import '../../../../utilies/color_data.dart';
class SignupViewBody extends StatelessWidget {
  const SignupViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controlUser=TextEditingController();
    TextEditingController controlEmail=TextEditingController();
    TextEditingController controlPassword=TextEditingController();
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
           const Text(
              'Sign Up',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Gilroy'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
           const Text(
              'Enter your credentials to continue',
              style: TextStyle(
                  fontFamily: 'fonts/Gilroy-Medium.ttf',
                  fontSize: 14,
                  color: Colors.grey),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .06,
            ),
           const Text(
              'Username',
              style: TextStyle(
                  fontSize: 16, fontFamily: 'Gilroy', color: Colors.grey),
            ),
            TextField(
              maxLines: 1,
              keyboardType: TextInputType.text,
              controller: controlUser,
              decoration:const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                enabled: true,
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
          const  Text(
              'Email',
              style: TextStyle(
                  fontSize: 16, fontFamily: 'Gilroy', color: Colors.grey),
            ),
            TextField(
              maxLines: 1,
              keyboardType: TextInputType.emailAddress,
              controller: controlEmail,
              decoration:const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                enabled: true,
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
           const Text(
              'Password',
              style: TextStyle(
                  fontSize: 16, fontFamily: 'Gilroy', color: Colors.grey),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.035,
              child: TextField(
                maxLines: 1,
                keyboardType: TextInputType.visiblePassword,
                controller: controlPassword,
                decoration:const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  suffixIcon: Icon(
                    Icons.visibility_off_sharp,
                    color: Colors.grey,
                    size: 20,
                  ),
                  enabled: true,
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
           const Text('By continuing you agree to our Terms of Service\nand Privacy Policy.'),
            Center(
              child: BasicContainer(
                  wid: MediaQuery.of(context).size.width * .84,
                  heig: MediaQuery.of(context).size.height * .09,
                  fun: () {Navigator.push(context, MaterialPageRoute(builder: (_)=> TabScreen(currentPageByIndex: 0,)));},
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
               const Text('Already have an account? '),
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
