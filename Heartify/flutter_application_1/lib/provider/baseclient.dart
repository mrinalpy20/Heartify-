import 'dart:convert';
import 'package:http/http.dart' as http;

class BaseClient {
  String baseUrl = "http://localhost:8000";
  Future<dynamic> post(dynamic object) async {
    var url = Uri.parse(baseUrl);
    var response = await http.post(url, body: object);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return throw Exception("Error");
    }
  }

  Future<dynamic> get() async {
    var url = Uri.parse(baseUrl);
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return throw Exception("Error");
    }
  }
}
