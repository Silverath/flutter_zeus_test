import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class RemoteDataSource {
  static const _endpoint = 'https://jsonplaceholder.typicode.com/users';

  Future<List<UserModel>> fetchUsers() async {
    final res = await http.get(Uri.parse(_endpoint),
        headers: {'CCApp': 'true', });
    print('🔍 Status: ${res.statusCode}');
    print('🔍 Body: ${res.body}');
    if (res.statusCode == 200) {
      final List data = json.decode(res.body);
      return data.map((e) => UserModel.fromJson(e)).toList();
    } else {
      throw Exception('Error de red: ${res.statusCode}');
    }
  }
}