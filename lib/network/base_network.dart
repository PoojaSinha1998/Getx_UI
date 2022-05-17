import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../model/homepage_model.dart';

class BaseNetwork {
  static var client = http.Client();
  static final String baseUrl = "https://apidev.cohora.net/post/v1";


  static Future<List<Items>?> get(String partUrl) async {
    final fullUrl = baseUrl + "/" + partUrl;
    var response = await client
        .get(Uri.parse(fullUrl));
    if (response.statusCode == 200) {
      var json = response.body;
      var upcoming = upcomingFromJson(json);
      return upcoming.items;
    } else {
      return null;
    }
  }
  // static Future<Map<String, dynamic>?> get(String partUrl) async {
  //   final fullUrl = baseUrl + "/" + partUrl;
  //
  //   debugPrint("BaseNetwork - fullUrl : $fullUrl");
  //   var response = await client.get(Uri.parse(fullUrl));
  //   // if (response.statusCode == 200) {
  //   var json = response.body;
  //   debugPrint("BaseNetwork - fullUrl : ${json}");
  //   var upcoming = _processResponse(response);
  //   return _processResponse(response);
  // // }
  //   debugPrint("BaseNetwork - fullUrl : ${response}");
  //   // final response = await http.get(Uri.parse(fullUrl));
  //
  //   debugPrint("BaseNetwork - response : ${response.body}");
  //
  //   return _processResponse(response);
  // }

  static Future<Map<String, dynamic>?> _processResponse(
      http.Response response) async {
    final body = response.body;
    if (body.isNotEmpty) {
      final jsonBody = json.decode(body);
      return jsonBody;
    } else {
      print("processResponse error");
      return {"error": true};
    }
  }
}
