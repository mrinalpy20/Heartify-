import 'dart:convert';
import 'package:http/http.dart' as http;

class BaseClient {
  static const baseUrl = "https://heartify-api.onrender.com";
  static Future<dynamic> post(dynamic object) async {
    var url = Uri.parse(baseUrl);
    var response = await http
        .post(url, body: object, headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return throw Exception("Error ${response.body}");
    }
  }
}
