import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  final time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        time.hour >= 4 && time.hour <= 11
                            ? 'Good Morning,'
                            : time.hour >= 12 && time.hour <= 14
                                ? 'Good Noon,'
                                : time.hour >= 15 && time.hour <= 17
                                    ? 'Good Afternoon,'
                                    : time.hour >= 18 && time.hour <= 22
                                        ? 'Good Evening,'
                                        : 'Good Night,',
                        textScaleFactor: 1.5,
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Shourya!',
                        textScaleFactor: 1.5,
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  trailing: Icon(
                      time.hour >= 4 && time.hour <= 16
                          ? Icons.wb_sunny
                          : Icons.nightlight,
                      color: Colors.yellow,
                      size: 50.0),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                child: Center(
                  child: Text('NO NEW NOTIFICATIONS'),
                ),
              )
            ],
          ),
        ));
  }
}
