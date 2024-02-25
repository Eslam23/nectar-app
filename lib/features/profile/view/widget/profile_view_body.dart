import 'package:flutter/material.dart';
import 'package:untitled/basic_container.dart';
import 'package:untitled/features/profile/view/widget/textfield_profile.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({Key? key}) : super(key: key);

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  TextEditingController controlEmail =TextEditingController();
  TextEditingController controlFirstName =TextEditingController();
  TextEditingController controlLastName =TextEditingController();
  TextEditingController controlNational =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width *.05,right:MediaQuery.of(context).size.width *.05 ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildText( 'Your details',18,Colors.black,1.5,FontWeight.w600),
            buildText( 'Here you can edit your personal details\nwhen you\'re done ,click save ',16,Colors.grey,1.5,FontWeight.w400),
            SizedBox(height: MediaQuery.of(context).size.height *0.2,),
            buildText('First Name',16,Colors.grey,2,FontWeight.w400),
            TextFieldProfile(controller: controlFirstName, keyBoardType: TextInputType.name,),
            SizedBox(height: MediaQuery.of(context).size.height *0.02,),
            buildText('Last Name',16,Colors.grey,2,FontWeight.w400),
            TextFieldProfile(controller: controlLastName, keyBoardType: TextInputType.name,),
            SizedBox(height: MediaQuery.of(context).size.height *0.02,),
            buildText('Email',16,Colors.grey,2,FontWeight.w400),
            TextFieldProfile(controller: controlEmail, keyBoardType: TextInputType.emailAddress,),
            SizedBox(height: MediaQuery.of(context).size.height *0.02,),
            buildText('nationality',16,Colors.grey,2,FontWeight.w400),
            TextFieldProfile(controller: controlNational, keyBoardType: TextInputType.text,),
            SizedBox(height: MediaQuery.of(context).size.height *0.02,),
            BasicContainer(
              wid: MediaQuery.of(context).size.width * .84,
              heig: MediaQuery.of(context).size.height * .08,
              fun: (){},
              edgeInsets: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .04,
              ),
              txtButton: 'Save',
            ),
          ],
        ),
      ),
    );
  }

  Text buildText(String txt,double size,Color col,double height,FontWeight fontWeight) => Text(txt,style: TextStyle(fontSize: size,fontWeight: fontWeight,color:col ,height: height),);
}
