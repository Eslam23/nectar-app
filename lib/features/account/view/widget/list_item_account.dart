import 'package:flutter/material.dart';
class ListItemAccount extends StatelessWidget {
  const ListItemAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> _listTileContent=[
      {'title':'Orders','icon':Icon(Icons.local_mall_outlined,size: 20,)},
      {'title':'My Details','icon':Icon(Icons.medical_information_outlined,size: 20,)},
      {'title':'Delivery Address','icon':Icon(Icons.location_on_outlined,size: 20,)},
      {'title':'Payment Methods','icon':Icon(Icons.payment_outlined,size: 20,)},
      {'title':'Promo Cord','icon':Icon(Icons.sell_outlined,size: 20,)},
      {'title':'Notifications ','icon':Icon(Icons.notifications,size: 20,)},
      {'title':'Help','icon':Icon(Icons.help_outline,size: 20,)},
      {'title':'About ','icon':Icon(Icons.info_outline,size: 20,)},
    ];
    return  Expanded(
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder:(context,index){
            return Column(
              children: [
                SizedBox(
                  height:MediaQuery.of(context).size.height *.063,
                  child: ListTile(
                    title: Text(_listTileContent[index]['title'],style: const TextStyle(fontFamily: 'Gilroy',fontSize:18 ,fontWeight:FontWeight.w600 ),),
                    leading: _listTileContent[index]['icon'],
                    trailing:const  Icon(Icons.arrow_forward_ios,size: 20,),
                  ),
                ),
                Divider(indent: MediaQuery.of(context).size.width *.04,endIndent:  MediaQuery.of(context).size.width *.04,height: MediaQuery.of(context).size.height *.01,)
              ],
            );
          } ,
          itemCount: 8,
        ));

  }
}
