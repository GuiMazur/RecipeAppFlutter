import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:math';

class MoviesController{
  ValueNotifier name = ValueNotifier('');
  var oldName = '';

  callAPI() async{
    var client = http.Client();
    try {
      do {
        oldName = name.value;
        var rnd = Random().nextInt(898143) + 55;
        var response = await client.get(
          Uri.parse('https://api.themoviedb.org/3/movie/$rnd?api_key=6a5a10cc8eb3b0b6fcf35ee7fc658644'));
        var decodedResponse = jsonDecode(response.body) as Map;
        if (decodedResponse.containsKey('title')) name.value = decodedResponse['title'];
      } while (name.value == oldName);
    } finally {
      client.close();
    }
  }
}