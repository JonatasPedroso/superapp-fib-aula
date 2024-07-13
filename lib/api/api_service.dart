import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:superapp/model/heroi_item_model.dart';

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
}
