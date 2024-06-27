// class WeatherModel {
//   Location location;
//   Current current;
//
//   WeatherModel({required this.current, required this.location});
// }

import 'package:flutter/cupertino.dart';

class Location {
  String name, region, country, tz_id, localtime;
  double lat, lon, localtime_epoch;
  Current current;

  Location(
      {required this.country,
      required this.lat,
      required this.localtime,
      required this.localtime_epoch,
      required this.lon,
      required this.name,
      required this.region,
      required this.tz_id,
      required this.current});

  factory Location.fromJson(Map json) {
    return Location(
      country: json['country'],
      lat: json['lat'],
      localtime: json['localtime'],
      localtime_epoch: json['localtime_epoch'],
      lon: json['lon'],
      name: json['name'],
      region: json['region'],
      tz_id: json['tz_id'],
      current: Current.fromJson(json['current']),
    );
  }
}

class Current {
  double last_updated_epoch, temp_c, temp_f, is_day;
  String last_updated;
  Condition condition;

  Current(
      {required this.condition,
      required this.is_day,
      required this.last_updated,
      required this.last_updated_epoch,
      required this.temp_c,
      required this.temp_f});

  factory Current.fromJson(Map json) {
    return Current(
        condition: Condition.fromJson(json['condition']),
        is_day: json['is_day'],
        last_updated: json['last_updated'],
        last_updated_epoch: json['last_updated_epoch'],
        temp_c: json['temp_c'],
        temp_f: json['temp_f'],
    );
  }
}

class Condition {
  String text, icon;
  int code;

  Condition({required this.code, required this.icon, required this.text});

  factory Condition.fromJson(Map json) {
    return Condition(
        code: json['code'], icon: json['icon'], text: json['text']);
  }
}
