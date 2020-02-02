import 'dart:convert';

import 'package:http/http.dart' as http;

class Networking {
  /// Create [Weather] class
  /// property.constructor : [url]
  ///
  String url;

  Networking({this.url});

  /// Do HTTP request as [get]
  /// return : [response.body]
  Future<Map> getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print('Error: url');
    }
  }
}
