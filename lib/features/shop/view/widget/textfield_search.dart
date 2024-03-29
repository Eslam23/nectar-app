import 'package:flutter/material.dart';
class TextFieldSearch extends StatefulWidget {
  final Function(String value) fun;
final Function()  nav;
final Widget child;
  const TextFieldSearch({Key? key, required this.fun, required this.nav, required this.child,}) : super(key: key);

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
        onTap: widget.nav,
        onChanged:widget.fun,
        maxLines: 1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
            isDense: true,
            filled: true,
            suffixIcon: widget.child,//Icon(Icons.settings_overscan),
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
