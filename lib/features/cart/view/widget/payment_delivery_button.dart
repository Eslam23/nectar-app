import 'package:flutter/material.dart';

class PaymentDeliveryButton extends StatelessWidget {
  final Color col;
  final Function() fun;
  final String textButton;
  final IconData iconData;
  const PaymentDeliveryButton(
      {super.key,
      required this.col,
      required this.fun,
      required this.textButton,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fun,
      child: Container(
        // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .03),
        width: MediaQuery.of(context).size.width * .4,
        height: MediaQuery.of(context).size.height * .06,
        decoration: BoxDecoration(
          color: col,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData),
            SizedBox(
              width: MediaQuery.of(context).size.width * .02,
            ),
            Text(
              textButton,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xFF181725)),
            ),
          ],
        ),
      ),
    );
  }
}
