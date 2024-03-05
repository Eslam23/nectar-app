import 'package:flutter/material.dart';
import 'package:untitled/utilies/color_data.dart';

class PrivacyBody extends StatelessWidget {
  const PrivacyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Privacy & Security'),
        leadingWidth: 40,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.only(left: 4, top: 0, bottom: 0),
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * .04),
            child: const Icon(
              Icons.arrow_back_ios,
              size: 12,
            ),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 223, 202, 202),
                shape: BoxShape.circle,
                border: Border.all(color: ColorsData.basicColor, width: .5)),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .05),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            Text(
              'At nectar, we take your privacy and security seriously. We are committed to safeguarding your personal information and ensuring that your data remains protected at all times. Our app employs industry-standard encryption protocols to secure your data transmission and storage, providing you with peace of mind knowing that your information is safe from unauthorized access. We adhere to strict privacy policies and do not share your personal data with third parties without your consent. Additionally, we continuously monitor and update our security measures to mitigate any potential risks and keep your information secure. Your trust is paramount to us, and we are dedicated to maintaining the highest standards of privacy and security for our users.',
              style: TextStyle(
                  height: 1.5,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF7C7C7C)),
            ),
          ],
        ),
      ),
    );
  }
}
