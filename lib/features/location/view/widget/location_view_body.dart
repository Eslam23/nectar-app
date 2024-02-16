import 'package:flutter/material.dart';
import 'package:flutter_dropdown_search/flutter_dropdown_search.dart';
import 'package:untitled/basic_container.dart';

import '../../../login/login_view.dart';
class LocationViewBody extends StatelessWidget {
  const LocationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerZone=TextEditingController();
    final TextEditingController controllerArea=TextEditingController();
    final List<String> items=["Afghanistan", "Albania", "Algeria", "American Samoa",
      "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua and Barbuda",
      "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan"];
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .05,
          right: MediaQuery.of(context).size.width * .05,
          top: MediaQuery.of(context).size.height * .065),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Center(
              child: Image.asset(
                'asset/illustration.png',
                width: MediaQuery.of(context).size.width * .6,
                height: MediaQuery.of(context).size.height * .2,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
          const  Center(
              child: Text(
                'Select Your Location',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Gilroy',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
          const  Center(
              child: Text(
                'Swithch on your location to stay in tune with\nwhat’s happening in your area',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: 'fonts/Gilroy-Medium.ttf',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height *.08,),
           const Text('Your Zone',style: TextStyle(fontFamily: 'Gilroy',fontWeight: FontWeight.w500,fontSize: 16,color: Colors.grey),),
            FlutterDropdownSearch(
              hintText: 'Type of your zone',
              textController: controllerZone,
              items: items,
              dropdownHeight: 300,
            ),
            SizedBox(height: MediaQuery.of(context).size.height *.04,),
          const  Text('Your Area',style: TextStyle(fontFamily: 'Gilroy',fontWeight: FontWeight.w500,fontSize: 16,color: Colors.grey),),

            FlutterDropdownSearch(
              hintText: 'Type of your area',
              textController: controllerArea,
              items: items,
              dropdownHeight: 300,
            ),
            Center(
              child: BasicContainer(
                wid: MediaQuery.of(context).size.width * .84,
                heig: MediaQuery.of(context).size.height * .09,
                fun: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const LoginView()));
                },
                edgeInsets: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height *.04,
                    ), txtButton: 'Submit',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
