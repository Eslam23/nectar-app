import 'package:flutter/material.dart';
class BottomNavIcon extends StatelessWidget {
  final String text;
  final IconData iconData;
  const BottomNavIcon({Key? key, required this.text, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width *.188,
     height: MediaQuery.of(context).size.width *.145,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 30,
            color: Colors.white,
          ),
          Text(
            text,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
