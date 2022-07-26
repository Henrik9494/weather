import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_test/screens/weather_second_screen.dart';

import '../const/const.dart';
import '../models/weather_response/weather_json.dart';

class WeatherScreenProvider with ChangeNotifier {
  var mRezult = "";
  BuildContext? contextPr;
  bool boolTemp = true;
  WeatherScreenProvider() {
    positionGeo();
    notifyListeners();
  }
  var rezult = WeatherResponse();
  Position? position;
  String photo = "assets/beautiful-sunset-3.jpg";

  Future<dynamic> diohttp() async {
    var response;
    try {
      response =
          await Dio().get("https://yahoo-weather5.p.rapidapi.com/weather",
              queryParameters: {"location": mCity},
              options: Options(
                headers: {"X-RapidAPI-Host": host, "X-RapidAPI-Key": key},
              ));
      notifyListeners();
    } on DioError catch (e) {
      if (e.response?.statusCode == 400 || e.response?.statusCode == 404) {
        print(e.response!.statusCode);

        notifyListeners();
        return;
      }
    }

    final temp = WeatherResponse.fromJson(response.data);
    rezult = temp;
    mRezult = rezult.current_observation?.condition?.text ?? "";
    mIconRezult();
    notifyListeners();
    diohttpPhoto();
    notifyListeners();

    return temp;
  }

  Future<dynamic> diohttpPhoto() async {
    mCity.toLowerCase() == "erevan" ? mCity = "Yerevan" : mCity;
    final response = await Dio().get("https://api.unsplash.com/search/photos",
        queryParameters: {"query": mCity},
        options: Options(
          headers: {
            "Accept-Version": headersPhoto,
            "Authorization": authorization
          },
        ));
    notifyListeners();
    var res = response.data["results"] as List;
    res.isEmpty
        ? photo = "assets/beautiful-sunset-3.jpg"
        : photo = response.data["results"][2]["urls"]["full"] ??
            "assets/beautiful-sunset-3.jpg";
    notifyListeners();
    notifyListeners();
    boolTemp = false;
    return photo;
  }

  positionGeo() async {
    position = await geoDanniy();
    print(position.toString());
    diohttpGeo();
    notifyListeners();
    return position;
  }

  Future<Position> geoDanniy() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("error");
      }
    }
    return await Geolocator.getCurrentPosition();
  }

  Future<dynamic> diohttpGeo() async {
    var response;
    try {
      response = await Dio().get(
          "https://yahoo-weather5.p.rapidapi.com/weather",
          queryParameters: {
            "lat": position?.latitude,
            "long": position?.longitude
          },
          options: Options(
            headers: {"X-RapidAPI-Host": host, "X-RapidAPI-Key": key},
          ));
      notifyListeners();
    } on DioError catch (e) {
      if (e.response?.statusCode == 400 || e.response?.statusCode == 404) {
        print(e.response!.statusCode);
        notifyListeners();
        return;
      }
    }

    final temp = WeatherResponse.fromJson(response.data);
    rezult = temp;
    mRezult = rezult.current_observation?.condition?.text ?? "";
    mIconRezult();
    notifyListeners();
    mCity = rezult.location!.city!;
    diohttpPhoto();
    nav(contextPr!);
    notifyListeners();
    return temp;
  }

  void nav(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: ((context) => const WeatherScreenSecond())));
    notifyListeners();
  }

  void mIconRezult() {
    print(mRezult);
    switch (mRezult) {
      case "Mostly Sunny":
        mIcon = "assets/sun.png";
        notifyListeners();
        break;
      case "Sunny":
        mIcon = "assets/sunny.png";
        break;
      case "Cloudy":
        mIcon = "assets/clouds.png";
        break;
      case "Partly Cloudy":
        mIcon = "assets/clear-sky.png";
        break;
      case "Clear":
        mIcon = "assets/moon.png";
        break;
      case "Showers":
        mIcon = "assets/raining.png";
        break;
      case "Rain":
        mIcon = "assets/raining.png";
        break;
      case "Scattered Showers":
        mIcon = "assets/storm.png";
        break;
      case "Scattered Thunderstorms":
        mIcon = "assets/storm(1).png";
        break;
    }
    notifyListeners();
  }
}
