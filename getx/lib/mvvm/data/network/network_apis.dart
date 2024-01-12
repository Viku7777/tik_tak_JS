import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:getx/mvvm/data/exception/app_exceptions.dart';
import 'package:getx/mvvm/data/network/base_Api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic responseJson;

    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeout {
      throw RequestTimeout();
    }
    return responseJson;
  }

  @override
  Future<dynamic> post(String url, dynamic data) async {
    dynamic responseJson;
// if our data is in row form then we use jsonEncode otherwise not
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeout {
      throw RequestTimeout();
    }
    return responseJson;
  }
}

dynamic returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      return jsonDecode(response.body);
    case 400:
      throw InvaildUrlException();
    default:
      throw OtherException(
          "Error accoured while communication with server ${response.statusCode}");
  }
}
