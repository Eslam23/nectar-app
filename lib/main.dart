import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/api_actions/provider_method.dart';

import 'core/api_actions/cart_provider.dart';
import 'core/api_actions/favourite_provider.dart';
import 'features/splash_screen/splash_view.dart';
void main(){
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create:(context)=> ProviderProduct()),
          ChangeNotifierProvider(create: (context) => CartProvider()),
          ChangeNotifierProvider(create: (context) => FavouriteProvider()),
        ],
      child:MyApp() ,
    )

  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }

}
