import 'package:flutter/material.dart';
import 'package:untitled/utilies/color_data.dart';

class WalletBody extends StatelessWidget {
  const WalletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Wallet'),
        leadingWidth: 40,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.only(left: 4, top: 0, bottom: 0),
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * .04),
            child: Icon(
              Icons.arrow_back_ios,
              size: 12,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: ColorsData.basicColor, width: .5)),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .1,
            right: MediaQuery.of(context).size.width * .1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Image.asset(
              'asset/home/image2.png',
              fit: BoxFit.contain,
            ),
            Text(
              'What is My Wallet?',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Colors.black,
                  height: 2),
            ),
            Text(
              'we are my wallet To purchase any item in the app. The app saves your money in my walletIt can be saved or exchanged for any item and has a code for the user to purchase and control the balance in my wallet',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF7C7C7C)),
              textAlign: TextAlign.start,
            ),
            Spacer(),
          ],
        ),
      ),
    ));
  }
}
