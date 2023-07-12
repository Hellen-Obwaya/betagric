import 'package:beta_agric/controller/main_controller.dart';
import 'package:beta_agric/screens/donate_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Donations extends StatelessWidget {
  const Donations({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 212, 242, 178),
      appBar: AppBar(
        title: const Text(
          "Donations",
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
            children: MainController.to.donations.entries.map((singleDonation) {
          return Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0.5),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                            color: Colors.grey[100],
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              backgroundImage:
                                  AssetImage("images/seedlings.jpg"),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "${singleDonation.value["name"]}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "${singleDonation.value["location"]}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                )
                              ],
                            ),
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
                          MainController.to
                              .makePhoneCall(singleDonation.value["contact"]);
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(() => Donate());
        },
        label: Text(
          "Donate",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        backgroundColor: Color.fromARGB(255, 228, 236, 239),
      ),
    );
  }
}
