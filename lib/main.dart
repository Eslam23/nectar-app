import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/api_actions/category/provider_method.dart';
import 'package:untitled/core/api_actions/offer/provider_offer.dart';
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
          ChangeNotifierProvider(create: (context) => ProviderCategories()),
          ChangeNotifierProvider(create: (context) => ProviderOffer()),
        ],
      child:MyApp() ,
    )

  );
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   @override
   void initState() {
     super.initState();
     WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
       Provider.of<ProviderProduct>(context,listen: false).fetchAllProducts();
       Provider.of<ProviderCategories>(context,listen: false).fetchAllCategory();
       Provider.of<ProviderOffer>(context,listen: false).getAllOffers();
     });
   }
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}

