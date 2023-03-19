import 'package:beta_agric/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Donations extends StatelessWidget {
  const Donations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Donations",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 59, 168, 63),
        ),
        body: ListView(
          padding: EdgeInsets.all(5),
          children: [
            ListTile(
              title: Text(
                "Item",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Location",
                style: TextStyle(
                    color: Colors.black12,
                    fontWeight: FontWeight.w200,
                    fontSize: 18),
              ),
            )
          ],
        ));
  }
}
