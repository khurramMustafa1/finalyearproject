import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Weather Forecast',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16),
          // Weather Info Section
          Column(
            children: [
              Image.asset(
                'assets/images/weather.png', // Replace with your weather image asset
                height: 100,
              ),
              Text(
                '19°C',
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Precipitations\nMax: 24°   Min: 18°',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 16),
              Image.asset(
                'assets/images/house.png',
                height: 174,
                width: 295,
              ),
            ],
          ),
          SizedBox(height: 24),
          // Weather Details Section
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff0D4858),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 16.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "November, 19",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey[300]),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildWeatherColumn(
                        time: "5 PM",
                        temperature: "19°C",
                        icon: Icons.wb_sunny,
                      ),
                      _buildWeatherColumn(
                        time: "6 PM",
                        temperature: "18°C",
                        icon: Icons.cloud,
                      ),
                      _buildWeatherColumn(
                        time: "7 PM",
                        temperature: "18°C",
                        icon: Icons.nightlight_round,
                      ),
                      _buildWeatherColumn(
                        time: "8 PM",
                        temperature: "18°C",
                        icon: Icons.nightlight_round,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeatherColumn({
    required String time,
    required String temperature,
    required IconData icon,
  }) {
    return Column(
      children: [
        Icon(icon, size: 32, color: Colors.white),
        SizedBox(height: 8),
        Text(
          temperature,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 4),
        Text(
          time,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white
          ),
        ),
      ],
    );
  }
}


