//get user input
//2. need to a funciton to add user input or append to the URL endpoint
// -then i need it to send that get request to api
// -tries to return the json decode body response
// 3. loop this until the user quits.

import 'package:dicotionary_api/dicotionary_api.dart';

import 'dart:io';


void main(List<String> arguments) async{
  String API = 'https://freedictionaryapi.com/api/v1/entries/en/';
  while(true){
    print("Enter the word you want to search for: ");
    String value = stdin.readLineSync()!;
    var reply = await getJson(API, value);
    print('\nWord            Definition');
    print('--------------  ---------------------------------------------------');
    print('${value}      ${reply}');
  }
}






//FIRST ATTEMPTED 

// Future<dynamic> getJson(String word) async{
//   final http.Client client = http.Client();
//   try {
//     final Uri url = Uri.https("freedictionaryapi.com",
//     "/api/v1/entries/en/$word",);
//     final http.Response response = await client.get(url);
//     if (response.statusCode==200){
//       final  jsonData = json.decode(response.body);
//       // print(jsonData.runtimeType);  ---- I wrote this to understand better what is the type of variable/object that json.decode gives. (IT'S DYNAMIC LIST)
//       // So till here i am able to get the information from the API but I need to find a way to get the specific "Definition" data only and print in user readable form
//        var decodedJson = jsonData['entries'][0]['senses'][0]['definition']; // using this for manual extration of meaning
//      // print(decodedJson); 
//       return (decodedJson);
//       }else{
//         throw HttpException("An error occured");
//       }
//     } finally {
//       client.close();
//     }
//   }
  
