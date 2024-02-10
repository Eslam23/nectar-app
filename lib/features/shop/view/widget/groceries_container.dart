import 'package:flutter/material.dart';

class GroceriesContainer extends StatelessWidget {
  final String img;
  final String name;
  const GroceriesContainer({Key? key, required this.img, required this.name}) : super(key: key);

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
                img,
                fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width * .2,
                height: MediaQuery.of(context).size.height*.2,
              ),
            ),
            Text(
             name,
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
