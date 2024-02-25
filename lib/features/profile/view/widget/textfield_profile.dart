import 'package:flutter/material.dart';
class TextFieldProfile extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyBoardType ;
  const TextFieldProfile({Key? key, required this.controller, required this.keyBoardType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: 1,
      keyboardType: keyBoardType,
      controller: controller,
      decoration:const InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.zero,
        enabled: true,
        border: UnderlineInputBorder(),
      ),
    );
  }
}
