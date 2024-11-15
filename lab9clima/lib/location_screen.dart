import 'package:clima/weather.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  final dynamic weatherData;

  LocationScreen({required this.weatherData});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late double temperature;
  late String cityName;
  late String weatherDescription;
  final TextEditingController cityController = TextEditingController();

  @override
  void initState() {
    super.initState();
    updateUI(widget.weatherData);
  }

  void updateUI(dynamic weatherData) {
    setState(() {
      if (weatherData == null) {
        temperature = 0;
        cityName = 'Lỗi';
        weatherDescription = 'Không thể lấy dữ liệu thời tiết';
        return;
      }
      temperature = weatherData['main']['temp'];
      cityName = weatherData['name'];
      weatherDescription = weatherData['weather'][0]['description'];
    });
  }

  void getWeatherByCity(String city) async {
    var weatherData = await WeatherModel().getWeatherByCity(city);
    updateUI(weatherData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: cityController,
              decoration: InputDecoration(
                labelText: 'Nhập tên thành phố',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                getWeatherByCity(value);
              },
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.thermostat,
                  size: 50.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  '$temperature C',
                  style: TextStyle(fontSize: 50.0),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  size: 30.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  cityName,
                  style: TextStyle(fontSize: 30.0),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.description,
                  size: 20.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  weatherDescription,
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
