import 'dart:convert';
import 'package:http/http.dart';
import 'package:ramadan_tutorial/model/main_model.dart';

class ApiProvider {
  Client client = Client();
  final baseUrl = "https://api.pray.zone/v2/times/day.json";

  Future<MainModel> fetchPrayTime({String city, String date}) async {
    final path = Uri.parse("$baseUrl?city=$city&date=$date&timeformat=1");
    final response = await client.get(path);

    if (response.statusCode == 200) {
      return MainModel.parseJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}
