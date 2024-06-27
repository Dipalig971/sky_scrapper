import 'dart:convert';
import 'dart:html';

import 'package:flutter/cupertino.dart';

import '../helper/weather_api.dart';

class WeatherApi extends ChangeNotifier {

  Future<void> getData() async {
    String json = await WeatherApiService().callApi();
    List data = jsonDecode(json);
  }
}
