import 'package:flutter/material.dart';

class GroceriesContainer extends StatelessWidget {
  const GroceriesContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width *.04),
      width: MediaQuery.of(context).size.width*.6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Color(0xFFF8A44C).withOpacity(.15)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width *.05,right: MediaQuery.of(context).size.width *.06),
              child: Image.asset(
                'asset/home/4215936-pulses-png-8-png-image-pulses-png-409_409 1.png',
                fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width * .2,
                height: MediaQuery.of(context).size.height*.2,
              ),
            ),
            Text(
              'Pulses',
              style: TextStyle(
                  fontFamily: 'Gilroy',
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
