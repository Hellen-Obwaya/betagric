import 'dart:html';

import 'package:beta_agric/screens/dashboard.dart';
import 'package:beta_agric/screens/donate_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List trees = [
  "Hass ovacado",
  "Dragon Fruit",
  "Shovel",
  "Gravellia",
  "Mango",
  "Jackfruit",
  "Macadamia",
  "Pixies",
  "Spade",
  "Mint"
];
List location = [
  "Nairobi",
  "Muranga",
  "Kirinyaga",
  "Embu",
  "Makueni",
  "Siaya",
  "Migori",
  "Naivasha",
  "Naivasha",
  "Machakos"
];

class Donations extends StatelessWidget {
  const Donations({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (BuildContext, int index) => Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0.5),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0)),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0.5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 55.0,
                          width: 55.0,
                          color: Colors.grey,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage: AssetImage("images/seedlings.jpg"),
                          ),
                        ),
                        SizedBox(width: 0.5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              trees[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              location[index],
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: Get.width * .20,
                    height: 30,
                    child: ElevatedButton(
                      child: Text("Contact".toLowerCase(),
                          style: TextStyle(fontSize: 12)),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 28, 131, 52)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(
                                        color:
                                            Color.fromARGB(255, 201, 193, 193),
                                      )))),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
