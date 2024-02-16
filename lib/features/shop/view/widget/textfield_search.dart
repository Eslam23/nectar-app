import 'package:flutter/material.dart';
class TextFieldSearch extends StatefulWidget {
  final Function(String value) fun;
  const TextFieldSearch({Key? key, required this.fun,}) : super(key: key);

  @override
  State<TextFieldSearch> createState() => _TextFieldSearchState();
}

class _TextFieldSearchState extends State<TextFieldSearch> {

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .06,
      child: TextField(
        onChanged:widget.fun,
        maxLines: 1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
            isDense: true,
            filled: true,
            prefixIcon: Padding(
              padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*.04,left: MediaQuery.of(context).size.width*.04,top: MediaQuery.of(context).size.height*.01,bottom: MediaQuery.of(context).size.height*.01),
              child: Image.asset(
                'asset/home/Vector (4).png',
                fit: BoxFit.contain,
                width: 16,
                height: 16,
                color: Colors.black,
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
