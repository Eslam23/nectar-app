import 'package:flutter/material.dart';
class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .06,
      child: TextField(
        maxLines: 1,

        decoration: InputDecoration(
            isDense: true,
            filled: true,
            prefix: Padding(
              padding: const EdgeInsets.only(right: 12.0,left: 6,top: 10,bottom: 0),
              child: Image.asset(
                'asset/home/Vector (4).png',
                fit: BoxFit.contain,
                width: 16,
                height: 16,
              ),
            ),
            hintText: 'Search Store',
            enabled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15)
            )),
      ),
    );
  }
}
