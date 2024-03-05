import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/basic_container.dart';
import 'package:untitled/features/account/view/sign_out_body.dart';
import 'package:untitled/features/profile/view/widget/textfield_profile.dart';
import 'package:untitled/utilies/color_data.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({Key? key}) : super(key: key);

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  final fbKey = GlobalKey<FormState>();
  String error = '';
  TextEditingController controlEmail = TextEditingController();
  TextEditingController controlName = TextEditingController();
  TextEditingController controlPassword = TextEditingController();
  // TextEditingController controlNational = TextEditingController();
  bool visible = true;
  @override
  void dispose() {
    controlEmail;
    controlName;
    controlPassword;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .05,
          right: MediaQuery.of(context).size.width * .05),
      child: SingleChildScrollView(
        child: Form(
          key: fbKey,

          //autovalidateMode: autoValidation,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildText('Create Your Email Account ', 18, Colors.black, 2,
                  FontWeight.w600),
              buildText('create an account to start looking for item you like',
                  14, Color(0xFF7C7C7C), 1.5, FontWeight.w400),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              TextFieldProfile(
                hint: 'Name',
                controller: controlName,
                keyBoardType: TextInputType.name,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              // buildText('Last Name', 16, Colors.grey, 2, FontWeight.w400),
              TextFieldProfile(
                hint: 'Email',
                controller: controlEmail,
                keyBoardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              // buildText('Email', 16, Colors.grey, 2, FontWeight.w400),
              Container(
                height: 48,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .01),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.grey.withOpacity(.2)),
                child: TextFormField(
                  //key: fbKey,
                  onChanged: (value) {
                    setState(() {
                      if (value.contains(' ')) {
                        error = value;
                      } else {
                        error;
                      }
                    });
                  },
                  keyboardType: TextInputType.visiblePassword,
                  showCursor: true,
                  controller: controlPassword,
                  cursorColor: ColorsData.basicColor,
                  cursorErrorColor: Colors.red,
                  obscureText: visible,
                  decoration: InputDecoration(
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none),
                    hintText: 'Password',
                    isDense: true,
                    enabled: true,
                    errorText: error.isEmpty ? null : 'Enter your Password',
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          visible = !visible;
                        });
                      },
                      child: Icon(
                        visible ? Icons.visibility_off_sharp : Icons.visibility,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    border: const UnderlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'fonts/Gilroy-Medium.ttf',
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  )),
              // buildText('nationality', 16, Colors.grey, 2, FontWeight.w400),
              // TextFieldProfile(
              //   controller: controlNational,
              //   keyBoardType: TextInputType.text,
              // ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Center(
                child: BasicContainer(
                  wid: MediaQuery.of(context).size.width * .84,
                  heig: MediaQuery.of(context).size.height * .06,
                  fun: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SignOutBody()));
                  },
                  edgeInsets: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .04,
                    bottom: MediaQuery.of(context).size.height * .04,
                  ),
                  txtButton: 'Sign In',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .32,
                    child: Divider(
                      endIndent: 10,
                      indent: 10,
                      height: 5,
                      color: Colors.grey.withOpacity(.3),
                      thickness: 1,
                    ),
                  ),
                  Text('Or sign in with '),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .32,
                    child: Divider(
                      endIndent: 10,
                      indent: 10,
                      height: 5,
                      color: Colors.grey.withOpacity(.3),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * .03,
                        top: MediaQuery.of(context).size.height * .03),
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                        image: DecorationImage(
                          image: AssetImage(
                            'asset/Vector.png',
                          ),
                          fit: BoxFit.scaleDown,
                          scale: 1.1,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .03,
                      top: MediaQuery.of(context).size.height * .03,
                    ),
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(
                          'asset/Ellipse 35.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text buildText(String txt, double size, Color col, double height,
          FontWeight fontWeight) =>
      Text(
        txt,
        style: TextStyle(
            fontSize: size, fontWeight: fontWeight, color: col, height: height),
      );
}
