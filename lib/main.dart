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

class WeatherHome extends StatelessWidget {
  final TextEditingController cityController = TextEditingController();

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
              onPressed: () {
                // Fetch weather logic will be added here later
              },
              child: Text('Fetch Weather'),
            ),
            SizedBox(height: 16),
            Text('City: [City Name]'),
            Text('Temperature: [Temperature] °C'),
            Text('Condition: [Weather Condition]'),
          ],
        ),
      ),
    );
  }
}
