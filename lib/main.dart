import 'dart:math'; // Import dart:math for generating random weather data
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Info App',
      home: WeatherHome(),
    );
  }
}

// Convert WeatherHome to a StatefulWidget so that we can update the UI
class WeatherHome extends StatefulWidget {
  @override
  _WeatherHomeState createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {
  final TextEditingController cityController = TextEditingController();
  String city = '';
  String temperature = '';
  String condition = '';

  // Function to simulate fetching weather data
  void fetchWeather() {
    final random = Random();
    setState(() {
      city = cityController.text; // Get the city name from the TextField
      temperature = (15 + random.nextInt(15))
          .toString(); // Random temperature between 15°C and 30°C
      final conditions = ['Sunny', 'Cloudy', 'Rainy'];
      condition = conditions[
          random.nextInt(conditions.length)]; // Random weather condition
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: cityController,
              decoration: InputDecoration(labelText: 'Enter City Name'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: fetchWeather,
              child: Text('Fetch Weather'),
            ),
            SizedBox(height: 16),
            // Display the fetched weather data
            Text('City: $city'),
            Text('Temperature: $temperature°C'),
            Text('Condition: $condition'),
          ],
        ),
      ),
    );
  }
}
