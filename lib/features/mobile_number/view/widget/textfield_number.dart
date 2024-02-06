import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class TextFieldNumber extends StatelessWidget {
  final Function() fun;
  final double  mediaQueryLeft;
  final double mediaQueryRight;
  const TextFieldNumber({Key? key, required this.fun , required this.mediaQueryLeft, required this.mediaQueryRight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Padding(
      padding:  EdgeInsets.only(left: mediaQueryLeft ,right: mediaQueryRight),
      child: IntlPhoneField(
        controller: controller,
        onTap: fun,
        keyboardType: TextInputType.number,
        decoration:const InputDecoration(
          labelText: 'Phone Number',
          border: OutlineInputBorder(
            borderSide: BorderSide(),
          ),
        ),
        initialCountryCode: 'EG',
        onChanged: (phone) {
          print(phone.completeNumber);
        },
      ),
    );
  }
}
