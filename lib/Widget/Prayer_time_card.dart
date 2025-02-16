import 'package:flutter/material.dart';

class PrayerTimeCard extends StatelessWidget {
  final String prayerName;
  final String prayerTime;

  PrayerTimeCard({
    required this.prayerName,
    required this.prayerTime,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.1),
      shadowColor: Colors.pink,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              prayerName,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              prayerTime,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}