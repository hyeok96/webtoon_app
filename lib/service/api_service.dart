import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoon_app/models/webtoon_model.dart';

class apiService {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev";
  static const today = "today";

  static Future<List<WebttonModel>> getTodaysToons() async {
    List<WebttonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        webtoonInstances.add(WebttonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
