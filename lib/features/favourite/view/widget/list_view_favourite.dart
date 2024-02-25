import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/api_actions/favourite_provider.dart';

class ListViewFavourite extends StatelessWidget {
  const ListViewFavourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Consumer<FavouriteProvider>(
      builder: (context,value,child){
        final prov=value.favouriteProduct;
        if(prov.isNotEmpty){
          return Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.height *.04),
                    child: ListTile(
                      leading: Image.network( prov[index].image!.url!,fit: BoxFit.contain,width:MediaQuery.of(context).size.width*.2),
                      title:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text( '${prov[index].title}',style:const TextStyle(fontFamily: 'fonts/Gilroy-Bold.ttf',fontSize: 16,fontWeight: FontWeight.w600),),

                              SizedBox(height: MediaQuery.of(context).size.height*.005,),
                              Text( '${prov[index].amount}',style:const TextStyle(fontSize:12 ,fontFamily:'fonts/Gilroy-Medium.ttf' ,color: Colors.grey),),
                            ],
                          ),

                          Text( '${prov[index].price}',style:const TextStyle(fontSize: 16,fontFamily: 'Gilroy',fontWeight: FontWeight.w600),)
                        ],
                      ),
                      trailing:const Icon(Icons.arrow_forward_ios,size: 20,),
                    ),
                  );
                },
                itemCount: prov.length,
              ));
        }else{
         // return const SizedBox(height:20,width:20,child: CircularProgressIndicator(strokeWidth: 3,));
          return Expanded(child: const Center(child: Text('No favourite product !!',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),));

        }
      },

    );

  }
}
