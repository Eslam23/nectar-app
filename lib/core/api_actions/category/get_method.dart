import 'dart:convert';

import 'models.dart';
import 'package:http/http.dart' as http ;
Future<List<Categories>> fetchCategory()async{
  final _url='https://netcar-server.onrender.com/categories';
  final response=await http.get(Uri.parse(_url));
  if(response.statusCode==200){
    print(response.body);
    List jsdecoded=json.decode(response.body);
    return jsdecoded.map((item) => Categories.fromJson(item) ).toList();
  }else{
    throw Exception('Not found data');
  }
}