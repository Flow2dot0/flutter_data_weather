import 'dart:convert';

import 'package:http/http.dart' as http;

class Networking {
  String url;

  Networking({this.url});

  Future<Map> getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print('error :url');
    }
  }
}
