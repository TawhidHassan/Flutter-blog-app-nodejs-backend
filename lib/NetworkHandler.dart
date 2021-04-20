import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class NetworkHandler {
  String baseurl = "https://whispering-tor-28571.herokuapp.com";
  var log = Logger();

  Future<dynamic> get(String url) async
  {
    url = formater(url);
    // /user/register
    var response= await http.get(url);
    log.i(response.body);
    log.i(response.statusCode);
  }


  Future<http.Response> post(String url, Map<String, String> body) async {
    url = formater(url);
    log.d(body);
    var response = await http.post(
      url,
      headers: {
        "Content-type": "application/json"
      },
      body: json.encode(body),
    );
    if(response.statusCode==200||response.statusCode==201){
      log.i(response.body);
      return response;
    }
    log.i(response.body);
    log.i(response.statusCode);
    log.i(response.statusCode);
  }


  String formater(String url){
    return baseurl+url;
  }


}