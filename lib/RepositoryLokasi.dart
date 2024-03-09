import 'package:http/http.dart' as http;
import 'dart:convert';
import 'ModelLokasi.dart';

class RepositoryLokasi {
  final String _baseUrl =
      'https://65ec49af0ddee626c9afe7a5.mockapi.io/sekolah/lokasi_pendaftaran';

  Future<List<lokasi_pendaftaran>> getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        Iterable it = jsonDecode(response.body);
        List<lokasi_pendaftaran> blog =
        it.map((e) => lokasi_pendaftaran.fromJson(e)).toList();
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
