import 'package:flutter/material.dart';

//houve a necessidade de adicionar no pubspec.yaml o pacote http, conforme 14.55
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';

const request = "https://api.hgbrasil.com/finance?key=314f2afe";

void main() async {

  http.Response response = await http.get(request);
  print(json.decode(response.body)["results"]["currencies"]["USD"]);


  runApp(MaterialApp(
    home: Container()
  ));
}