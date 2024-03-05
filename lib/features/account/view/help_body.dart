import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/utilies/color_data.dart';

class HelpBody extends StatelessWidget {
  const HelpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Help & Services'),
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .04,
          ),
          const Text(
            'Welcome to our Help & Support section! We understand that navigating technology can sometimes be challenging, which is why we\'re here to assist you every step of the way. Whether you have questions about how to use our app, encounter any issues, or simply need guidance, our dedicated support team is ready to help. Browse through our comprehensive FAQs for quick answers, or reach out to us directly for personalized assistance.',
            style: TextStyle(
                height: 1.5,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF7C7C7C)),
          ),
          Text(
            'Customers Service',
            style:
                TextStyle(fontWeight: FontWeight.w500, fontSize: 16, height: 4),
          ),
          SizedBox(
            width: 180,
            height: 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 75,
                  height: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Color(0xFF475DD1),
                      ),
                      Text(
                        '24568',
                        style: TextStyle(color: Color(0xFF475DD1)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 75,
                  height: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.phone,
                        color: Color(0xFF475DD1),
                      ),
                      Text(
                        '24568',
                        style: TextStyle(color: Color(0xFF475DD1)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
