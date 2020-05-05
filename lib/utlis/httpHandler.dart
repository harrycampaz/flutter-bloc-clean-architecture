import 'dart:convert';

import 'package:flutterleanarquitecture/utlis/constants.dart';
import 'package:http/http.dart' as http;
import 'endPoint.dart';

class HttpHandler {

  static final _httpHandler = new HttpHandler();
  static HttpHandler get() {
    return _httpHandler;
  }

  Future<dynamic> getRequest(String urlRequest) async {

    var responseBody;
    try {
      var response = await http.get(urlRequest, headers: {
        'X-APP-ID': Constants.appID,
      });

      if (response.statusCode == 200) {
        responseBody = response.body;
      }
    } catch (e) {
      print("Error de Pedition");
      // An error was received
      throw new Exception("AJAX ERROR");
    }
   // print("Con get"+responseBody.toString());
    if (responseBody != null) {
      return json.decode(responseBody);
    } else {
      return null;
    }
  }

}