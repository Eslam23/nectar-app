import 'package:flutter/material.dart';
import 'package:untitled/features/account/account_view.dart';

import '../../../utilies/color_data.dart';

class AboutBody extends StatelessWidget {
  const AboutBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('About'),
        leadingWidth: 40,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context, []);
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .04,
              ),
              const Text(
                'Who is Nectar ?',
                style: TextStyle(
                    height: 2.5,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const Text(
                'Nectar is a versatile and user-friendly app designed to streamline your shopping experience. With its intuitive interface, users can effortlessly browse a vast array of products, ranging from groceries to electronics, and add items to their virtual cart with just a few taps The app provides detailed product descriptions and images, ensuring that customers can make informed decisions while shopping. Additionally, Carrefour offers convenient features such as personalized recommendations based on past purchases, digital coupons for discounts, and a user-friendly checkout process. Whether you\'re stocking up on household essentials or searching for the latest gadgets, Carrefour\'s app delivers convenience and efficiency right to your fingertips, making it the ultimate companion for modern shoppers.',
                style: TextStyle(
                    height: 1.5,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF7C7C7C)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
