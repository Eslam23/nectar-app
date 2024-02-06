import 'package:flutter/material.dart';
import '../../../mobile_number/mobile_number_view.dart';
import '../../../mobile_number/view/widget/textfield_number.dart';
import 'google_container.dart';

class SignWithViewBody extends StatefulWidget {
  const SignWithViewBody({Key? key}) : super(key: key);

  @override
  State<SignWithViewBody> createState() => _SignWithViewBodyState();
}

class _SignWithViewBodyState extends State<SignWithViewBody> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'asset/Mask Group.png',
            width: double.infinity,
            height: MediaQuery.of(context).size.height *.4,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .8,
            child:const Text(
              'Get your groceries\nwith nectar',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                fontFamily: 'Gilroy',
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height *.03,
          ),
          TextFieldNumber(
            fun: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const MobileNumberView()));
            },
            mediaQueryLeft: MediaQuery.of(context).size.width * .1,
            mediaQueryRight: MediaQuery.of(context).size.width * .1,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height *.01,
          ),
          const Text(
            'Or connect with social media',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.grey,
              fontFamily: 'Gilroy',
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height *.035,
          ),
         const GoogleContainer(
            txtButton: 'Continue with Google',
            col: Color(0xFF5383EC),
            imag: 'asset/Group 6795.png',
          ),
         const GoogleContainer(
            txtButton: 'Continue with Facebook',
            col: Color(0xFF4A66AC),
            imag: 'asset/Vector.png',
          ),
        ],
      ),
    );
  }
}
