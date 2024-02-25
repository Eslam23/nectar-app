import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled/core/api_actions/models.dart';

Future<List<Products>> fetchData()async{
  final _URL='https://netcar-server.onrender.com/products';
  final response=await http.get(Uri.parse(_URL));
  if(response.statusCode==200){
    print(response.body);
    List jsdecoder=json.decode(response.body);
    return jsdecoder.map((data) => Products.fromJson(data)).toList();
  }else{
    throw Exception('cant get data ');
  }

}