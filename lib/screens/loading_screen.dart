import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();

    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    http.Response response = await http.get(
        'http://api.openweathermap.org/data/2.5/weather?q=Delhi,in&appid=b6edd5f70976317e420c7c7ae67614e5');

    if (response.statusCode == 200) {
      String data = response.body;

      var temprature = jsonDecode(data)['main']['temp'];
      print(temprature);
      var condition = jsonDecode(data)['weather'][0]['id'];
      print(condition);
      var cityName = jsonDecode(data)['name'];
      print(cityName);
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
