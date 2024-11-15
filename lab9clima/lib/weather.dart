import 'dart:convert';
import 'package:http/http.dart' as http;

const apiKey = '2182abf238fd74d8fa8e1fb0b2c71b08';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getWeatherData(double latitude, double longitude) async {
    var url = '$openWeatherMapURL?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric';
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
      return null;
    }
  }

  Future<dynamic> getWeatherByCity(String city) async {
    var url = '$openWeatherMapURL?q=$city&appid=$apiKey&units=metric';
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
      return null;
    }
  }
}
