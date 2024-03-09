import 'package:http/http.dart' as http;
import 'dart:convert';
import 'model.dart';

class Repository {
  final String _baseUrl =
      'https://65e93f694bb72f0a9c50fdf6.mockapi.io/murid/apicoba/data_murid';

  Future<List<data_murid>> getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<data_murid> blog =
        it.map((e) => data_murid.fromJson(e)).toList();
        return blog;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
