import 'package:flutter/material.dart';
import 'package:untitled/utilies/styles.dart';

import '../../../myclub_card/myclub_card_view.dart';
import '../../../profile/profile_view.dart';
import '../../../scan_code/scan_code_view.dart';
class ListItemAccount extends StatelessWidget {
  const ListItemAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String,dynamic>> listTileAccount=[
      {'title':'Profile','icon':Icon(Icons.local_mall_outlined,size: 20,),'onPress':(){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ProfileView()));}},
      {'title':'Scan & Go','icon':Icon(Icons.medical_information_outlined,size: 20,),'onPress':(){Navigator.push(context, MaterialPageRoute(builder: (_)=>ScanCodeView()));}},
      {'title':'MyClub Card','icon':Icon(Icons.location_on_outlined,size: 20,),'onPress':(){Navigator.push(context, MaterialPageRoute(builder: (_)=>MyClubCardView()));}},
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
                GestureDetector(
                  onTap: listTileAccount[index]['onPress'],
                  child: SizedBox(
                    height:MediaQuery.of(context).size.height *.063,
                    child: ListTile(
                      title: Text(listTileAccount[index]['title'],style: const TextStyle(fontFamily: 'Gilroy',fontSize:18 ,fontWeight:FontWeight.w600 ),),
                      leading: listTileAccount[index]['icon'],
                      trailing:const  Icon(Icons.arrow_forward_ios,size: 20,),
                    ),
                  ),
                ),
                Divider(indent: MediaQuery.of(context).size.width *.04,endIndent:  MediaQuery.of(context).size.width *.04,height: MediaQuery.of(context).size.height *.01,)
              ],
            );
          } ,
          itemCount: listTileAccount.length,
        ));

  }
}
