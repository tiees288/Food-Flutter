import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Models/Food.dart';

Future<List<Food>> FetchFood() async {
  var client = http.Client();

  try {
    var url =
        Uri.parse('https://639ae512d514150197431f44.mockapi.io/api/v1/food');
    final response = await client.get(url);

    if (response.statusCode == 200) {
      var resJson = jsonDecode(utf8.decode(response.bodyBytes));
      return resJson.map<Food>((json) => Food.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load food');
    }
  } catch (e) {
    print(e.toString());
    throw Exception('Failed to load food');
  }
}
