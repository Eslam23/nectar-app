import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DigitCodeViewBody extends StatelessWidget {
  const DigitCodeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .05,
          right: MediaQuery.of(context).size.width * .05,
          top: MediaQuery.of(context).size.height * .065),
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
            height: MediaQuery.of(context).size.height * .1,
          ),
          const Text(
            'Enter your 4-digit code',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                fontFamily: 'Gilroy',
                color: Colors.black),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          const Text(
            'Code',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
                color: Colors.grey),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .012,
          ),
          TextField(
            maxLength: 4,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: const InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide()),
              hintText: '- - - -',
              labelStyle: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
