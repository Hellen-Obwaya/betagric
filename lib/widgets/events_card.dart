import 'package:flutter/material.dart';

class EventsCard extends StatelessWidget {
  const EventsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Event Name',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter event name',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Location/Link',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter location',
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Contact Person',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter contact person',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
