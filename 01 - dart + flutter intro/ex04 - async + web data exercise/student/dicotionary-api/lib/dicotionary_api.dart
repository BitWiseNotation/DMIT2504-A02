import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic>getJson(String api, String Word) async{    // function requires the word you want to search for and the api 
   // first i will need to parse the URI to the functions to fetch
   String endUrl = api+Word;    // appending the word with the api
   final fullApi = Uri.parse(endUrl);
   final httpjson= await http.get(fullApi);
   final restJson = json.decode(httpjson.body);
   final res = restJson['entries'][0]['senses'][0]['definition'];
  //  String defi = 'definition';  // to be completed    - the idea is to loop throught this somehow and print all verions of definition
  //  for(defi in restJson['entries'][0]['senses'][0]){
  //   print(restJson[defi]);
  //  }
   //final res = decoder(restJson);
   return(res);
} 




