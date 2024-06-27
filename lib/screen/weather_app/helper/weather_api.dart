import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class WeatherApiService{
  Future<String> callApi() async {
    Response response =await http.get(Uri.parse('https://api.weatherapi.com/v1/current.json?key=d078d17889aa4d38bd392246242706&q=Paris'));

    if(response.statusCode==200){
      log('success');
    }
    else{
      log('error');
    }
    return response.body;
}
}