import 'package:flutter/material.dart';
import 'package:untitled/utilies/styles.dart';
class ListItemAccount extends StatelessWidget {
  const ListItemAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    title: Text(ListsData.listTileAccount[index]['title'],style: const TextStyle(fontFamily: 'Gilroy',fontSize:18 ,fontWeight:FontWeight.w600 ),),
                    leading: ListsData.listTileAccount[index]['icon'],
                    trailing:const  Icon(Icons.arrow_forward_ios,size: 20,),
                  ),
                ),
                Divider(indent: MediaQuery.of(context).size.width *.04,endIndent:  MediaQuery.of(context).size.width *.04,height: MediaQuery.of(context).size.height *.01,)
              ],
            );
          } ,
          itemCount: ListsData.listTileAccount.length,
        ));

  }
}
