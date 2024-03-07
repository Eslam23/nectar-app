import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/utilies/color_data.dart';

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
            height: MediaQuery.of(context).size.height * .02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .18,
                height: MediaQuery.of(context).size.height * .09,
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(1),
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14)),
                    hintText: '-',
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .18,
                height: MediaQuery.of(context).size.height * .09,
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(1),
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14)),
                    hintText: '-',
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .18,
                height: MediaQuery.of(context).size.height * .09,
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(1),
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14)),
                    hintText: '-',
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .18,
                height: MediaQuery.of(context).size.height * .09,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(1),
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14)),
                    hintText: '-',
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: 'Didn’t receive the code? ',
                    style: TextStyle(
                        height: 3,
                        color: Color(0xFF181725),
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
                TextSpan(
                    text: 'Resend',
                    style: TextStyle(
                        color: ColorsData.basicColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 3))
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
