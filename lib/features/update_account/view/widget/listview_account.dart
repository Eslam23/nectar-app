import 'package:flutter/material.dart';

class ListViewAccount extends StatelessWidget {
  const ListViewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String>  title=[
      'How do I return Produvts ?',
      'What if I forgot my login ?',
      'Cash on Delivery',
      'Term & Conditions ',
    ];
    return SizedBox(
      height: MediaQuery.of(context).size.height *.29,
      child: ListView.builder(
        shrinkWrap: false,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height *.01,),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title[index],style: TextStyle(fontSize: 14,fontFamily: 'Gilroy',fontWeight: FontWeight.w400),),
                    Icon(Icons.arrow_forward_ios_outlined,size: 15,)
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height *.01,),
              Divider(),
            ],
          );
        },
        itemCount: title.length,
      ),
    );
  }
}
