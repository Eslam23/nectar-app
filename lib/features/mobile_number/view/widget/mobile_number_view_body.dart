import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class MobileNumberViewBody extends StatefulWidget {
  const MobileNumberViewBody({Key? key}) : super(key: key);

  @override
  State<MobileNumberViewBody> createState() => _MobileNumberViewBodyState();
}

class _MobileNumberViewBodyState extends State<MobileNumberViewBody> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width *.05, right: MediaQuery.of(context).size.width *.05, top: MediaQuery.of(context).size.height *.065),
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
            height: MediaQuery.of(context).size.height *.11,
          ),
          const Text(
            'Enter your mobile number',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                fontFamily: 'Gilroy',
                color: Colors.black),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height *.027,
          ),
        const  Text(
            'Mobile Number',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
                color: Colors.grey),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height *.012,
          ),
          IntlPhoneField(
            controller: controller,
            decoration: const InputDecoration(
              labelText: 'Phone Number',
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
            initialCountryCode: 'EG',
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
        ],
      ),
    );
  }
}
