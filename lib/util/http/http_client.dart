import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpHelper {
  static String _baseUrl = "api-base-url.com";

  //

  static Future<Map<String, dynamic>> get(String endPoint) async {
    final responce = await http.get(Uri.parse('$_baseUrl/$endPoint'));
    return _handleResponce(responce);
  }

  static Future<Map<String, dynamic>> post(
    String endPoint,
    dynamic data,
  ) async {
    final responce = await http.post(
      Uri.parse('$_baseUrl/$endPoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponce(responce);
  }

  static Future<Map<String, dynamic>> put(String endPoint, dynamic data) async {
    final responce = await http.put(
      Uri.parse('$_baseUrl/$endPoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponce(responce);
  }

  static Future<Map<String, dynamic>> delete(String endPoint) async {
    final responce = await http.delete(Uri.parse('$_baseUrl/$endPoint'));
    return _handleResponce(responce);
  }

  static Map<String, dynamic> _handleResponce(http.Response responce) {
    //
    if (responce.statusCode == 200) {
      return json.decode(responce.body);
    } else {
      throw Exception("Failed to load data: ${responce.statusCode}");
    }
  }
}
