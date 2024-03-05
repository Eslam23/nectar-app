import 'dart:convert';

import 'package:untitled/core/api_actions/offer/model.dart';
import 'package:http/http.dart' as http;
Future<List<Offers>> fetchOffer()async{
  final _url='https://netcar-server.onrender.com/offers';
  final response=await http.get(Uri.parse(_url));
  if(response.statusCode==200){
    print(response.body);
    List jsdecoder=json.decode(response.body);
    return jsdecoder.map((item) => Offers.fromJson(item)).toList();
  }else{
    throw Exception('not found data');
  }
}
