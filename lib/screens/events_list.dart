import 'package:beta_agric/screens/donate_form.dart';
import 'package:beta_agric/screens/donations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventsList extends StatelessWidget {
  const EventsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 212, 242, 178)),
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: Get.width,
                //color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: "Search for service",
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                height: Get.height * .5,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 228, 236, 239),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    //image section
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/eggs.jpg"),
                              fit: BoxFit.cover,
                              alignment: Alignment.centerRight),
                        ),
                      ),
                    ),
                    //text section
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "View all the \nUpcoming Events on...",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: Get.width,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //FIRST CONTAINER
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Donations(),
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width * .34,
                          height: MediaQuery.of(context).size.height * .4,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/events.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken)),
                            color: Color.fromARGB(255, 6, 65, 8),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Physical\nEvents",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      //SECOND CONTAINER

                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Donate(),
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width * .36,
                          height: MediaQuery.of(context).size.height * .4,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/twitter.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken)),
                            color: Color.fromARGB(255, 6, 65, 8),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Twitter\nEvents",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      //THIRD CONTAINER
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Donations(),
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width * .34,
                          height: MediaQuery.of(context).size.height * .4,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 6, 65, 8),
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: AssetImage("images/facebook.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken)),
                          ),
                          child: Center(
                            child: Text(
                              "Facebook\nEvents",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      //FORTH CONTAINER
                      InkWell(
                        onTap: () {
                          //Navigator.of(context).push(MaterialPageRoute(
                          //  builder: (context) => const Donations(),
                          //));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width * .34,
                          height: MediaQuery.of(context).size.height * .4,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/tiktok.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "TikTok\nEvents",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
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
