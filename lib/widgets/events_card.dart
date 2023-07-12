import 'package:beta_agric/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List upcoming_event = [
  "Physical",
  "Tiktok",
  "Facebook",
  "Twitter",
  "Physical",
];
List location_link = [
  "Nairobi",
  "Muranga",
  "Kirinyaga",
  "Embu",
  "Makueni",
];

class EventsCard extends StatelessWidget {
  const EventsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 212, 242, 178),
      appBar: AppBar(
        title: const Text(
          "Upcoming Events",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 41, 180, 73),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5))),
      ),
      body: Obx(() {
        return ListView(
            children: MainController.to.allEvents.entries.map((singleEvent) {
          return Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0.5),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0.5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 55.0,
                            width: 55.0,
                            color: Colors.grey,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              backgroundImage: AssetImage("images/${singleEvent.value["type"]}.jpg"),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "${singleEvent.value["title"]}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Text(
                                "${singleEvent.value["location"]}",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: Get.width * .22,
                      height: 30,
                      child: ElevatedButton(
                        child: Text("Schedule".toLowerCase(),
                            style: TextStyle(fontSize: 12)),
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 41, 180, 73)),
                            shape: MaterialStateProperty
                                .all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: BorderSide(
                                          color: Color.fromARGB(
                                              255, 201, 193, 193),
                                        )))),
                        onPressed: () {
                          MainController.to.sendToCalendar(
                              description: singleEvent.value["description"],
                              endDate: singleEvent.value["endDate"],
                              startDate: singleEvent.value["startDate"],
                              location: singleEvent.value["location"],
                              title: singleEvent.value["title"],
                              url: singleEvent.value["url"]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList());
      }),
    );
  }
}
