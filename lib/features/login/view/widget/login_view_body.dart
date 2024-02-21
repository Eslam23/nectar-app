import 'package:flutter/material.dart';
import 'package:untitled/basic_container.dart';
import 'package:untitled/utilies/color_data.dart';

import '../../../../carrot_image.dart';
import '../../../../tab_screen.dart';
import '../../../signup/signup_view.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  TextEditingController controllEmail = TextEditingController();
  TextEditingController controllPassword = TextEditingController();
  bool visible=true;
  @override
  Widget build(BuildContext context) {
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
          const  Text(
              'Loging',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Gilroy'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
           const Text(
              'Enter your emails and password',
              style: TextStyle(
                  fontFamily: 'fonts/Gilroy-Medium.ttf',
                  fontSize: 14,
                  color: Colors.grey),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .08,
            ),
           const Text(
              'Email',
              style: TextStyle(
                  fontSize: 16, fontFamily: 'Gilroy', color: Colors.grey),
            ),
            TextFormField(
              maxLines: 1,
              keyboardType: TextInputType.emailAddress,
              controller: controllEmail,
              decoration:const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            const Text('Password',style:  TextStyle(
                fontSize: 16, fontFamily: 'Gilroy', color: Colors.grey),),
            SizedBox(
              height: MediaQuery.of(context).size.height*.035,
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.visiblePassword,
                maxLines: 1,
                controller: controllPassword,
                obscureText: visible,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  isDense: true,
                  suffixIcon: GestureDetector(
                    onTap: (){
                      setState(() {
                        visible=!visible;
                      });
                    },
                    child: Icon(
                      visible?Icons.visibility_off_sharp:Icons.visibility,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ),

                  border:const UnderlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
          const  Align(
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
                  fun: () {Navigator.push(context, MaterialPageRoute(builder: (_)=> TabScreen(currentPageByIndex: 0,)));},
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
               const Text('Don’t have an account? '),
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
