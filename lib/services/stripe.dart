import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:intent_payment/config.example.dart';

class StripeService {
  Future<String> getPubKey() async {
    final String endpoint = "pub_key";
    final http.Response response = await http.post(
      Uri.parse('$kApiUrl/$endpoint'),
    );
    print(response.body);
    final responseData = jsonDecode(response.body);
    final _pubKey = responseData['publishable_key'];
    // DEBUG
    // print(_pubKey);
    //
    return _pubKey;
  }
}
