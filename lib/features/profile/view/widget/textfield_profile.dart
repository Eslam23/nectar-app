import 'package:flutter/material.dart';
import 'package:untitled/utilies/color_data.dart';

class TextFieldProfile extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  final TextInputType keyBoardType;
  const TextFieldProfile(
      {Key? key,
      required this.controller,
      required this.keyBoardType,
      required this.hint})
      : super(key: key);

  @override
  State<TextFieldProfile> createState() => _TextFieldProfileState();
}

class _TextFieldProfileState extends State<TextFieldProfile> {
  String errorTextValue = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .01),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.grey.withOpacity(.2)),
      child: TextFormField(
        autofocus: true,
        cursorColor: ColorsData.basicColor,
        showCursor: true,
        keyboardType: widget.keyBoardType,
        // textInputAction: TextInputAction.next,
        controller: widget.controller,
        onChanged: (value) {
          setState(() {
            if (value.contains('@')) {
              errorTextValue = value;
            } else {
              errorTextValue;
            }
          });
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
              gapPadding: 80,
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide.none, gapPadding: 40),
          errorBorder: OutlineInputBorder(gapPadding: 40),
          focusedErrorBorder: OutlineInputBorder(
              gapPadding: 40,
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.red)),
          errorText: errorTextValue.isEmpty ? null : 'Enter your Email',
          //isDense: true,
          //enabled: true,
          contentPadding: EdgeInsets.only(top: 10, left: 10),
          hintText: widget.hint,
        ),
      ),
    );
  }
}
