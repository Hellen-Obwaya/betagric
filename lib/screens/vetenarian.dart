import 'package:beta_agric/screens/appointments.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Vet extends StatelessWidget {
  const Vet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 212, 242, 178),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: "BOOK AN APPOINTMENT",
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //FIRST COLUMN
                      Container(
                        alignment: Alignment.center,
                        width: Get.width,
                        height: Get.height * .25,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://pixabay.com/vectors/avatar-icon-placeholder-facebook-1577909/",
                            ),
                          ),
                          title: Text(
                            "Alexander",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Vet Doctor",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Appointments(),
                            ));
                          },
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: Get.width,
                        height: Get.height * .25,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://pixabay.com/vectors/avatar-icon-placeholder-facebook-1577909/",
                            ),
                          ),
                          title: Text(
                            "Isaack",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Vet Doctor",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Appointments(),
                            ));
                          },
                        ),
                      ),

                      //SECOND COLUMN

                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: Get.width,
                        height: Get.height * .25,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://pixabay.com/vectors/avatar-icon-placeholder-facebook-1577909/",
                            ),
                          ),
                          title: Text(
                            "Yvone",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "Vet Doctor",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Appointments(),
                            ));
                          },
                        ),
                      ),

                      //THIRD COLUMN
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
