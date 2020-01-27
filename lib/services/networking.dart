import 'dart:convert';

import 'package:http/http.dart' as http;

class Networking {
  String url;

  Networking({this.url});

  void getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var decoded = jsonDecode(response.body);
      print(decoded);
    }
  }
}
