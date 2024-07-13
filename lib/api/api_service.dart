import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:superapp/model/heroi_item_model.dart';
import 'package:superapp/model/start_wars_item_model.dart';

class ApiService {
  Future<List<HeroiItemModel>> fetchHerois() async {
    final response = await http.get(
        Uri.parse('https://191fd58c43824dabbb1ce224212e2cac.api.mockbin.io/'));

    if (response.statusCode == 200) {
      print(response.body);
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => HeroiItemModel.fromJson(data)).toList();
    } else {
      print('Error: ${response.statusCode}');
      throw Exception('Erro ao carregar lista de heróis');
    }
  }

  Future<List<StarWarsItemModel>> fetchStarWars() async {
    final response = await http.get(
        Uri.parse('https://c9d073efe1f14a82934d919cb7fbea3c.api.mockbin.io/'));

    if (response.statusCode == 200) {
      print(response.body);
      List jsonResponse = json.decode(response.body);
      return jsonResponse
          .map((data) => StarWarsItemModel.fromJson(data))
          .toList();
    } else {
      print('Error: ${response.statusCode}');
      throw Exception('Erro ao carregar lista de Star Wars');
    }
  }
}
