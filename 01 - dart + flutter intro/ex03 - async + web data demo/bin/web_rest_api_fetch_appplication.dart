import 'package:web_rest_api_fetch_appplication/web_fetch.dart';

void main(List<String> arguments) async {
  // fetch dog.ceo api data

  // random dog info
  var dogData = await getJSON('https://dog.ceo/api/breeds/image/random');
  print('Message: ${dogData['message']}, Status: ${dogData['status']}');

  // all dog info
  dogData = await getJSON('https://dog.ceo/api/breeds/list/all');
  print(dogData['message']['collie'][0]);
}


class User {
  static final User _user = User._();

  factory User() => _user;

  User._();
}

void main() {
  var a = User();
  var b = User();

  print(identical(a, b)); // true
}