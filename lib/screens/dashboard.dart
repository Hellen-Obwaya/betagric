import 'package:beta_agric/screens/community.dart';
import 'package:beta_agric/screens/donations.dart';
import 'package:beta_agric/screens/drone.dart';
import 'package:beta_agric/screens/events_list.dart';
import 'package:beta_agric/screens/extensions.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 212, 242, 178),
        padding: EdgeInsets.symmetric(vertical: 20),
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
                              image: AssetImage("images/globalr.png"),
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
                              "Lets make earth\nGreener",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
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
                          width: MediaQuery.of(context).size.width * .20,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/seedlings.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Donate\nSeedlings and\nTools",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      //SECOND CONTAINER
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const EventsList(),
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width * .20,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/discussion.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Events",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
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
                          width: MediaQuery.of(context).size.width * .20,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/harvesting.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Crop\nPractices",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      //FORTH CONTAINER
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ExtensionServices(),
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width * .20,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/maizefarm.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Extension\nServices",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                          width: MediaQuery.of(context).size.width * .20,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/soils.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Soil\nTesting",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      //SECOND CONTAINER
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const EventsList(),
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width * .20,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/calendar.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Crop Calendar",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Donations(),
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width * .20,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/videos.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Videos",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),

                      //FORTH CONTAINER
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Community(),
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width * .20,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/comm.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Community",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                            builder: (context) => const Drones(),
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width * .20,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/drones.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Drone\nService",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      //SECOND CONTAINER
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const EventsList(),
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width * .20,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/urea.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Shop",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Donations(),
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width * .20,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/prices.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Market\nPrices",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      //FORTH CONTAINER
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ExtensionServices(),
                          ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          width: MediaQuery.of(context).size.width * .20,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/news.jpg"),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.4),
                                    BlendMode.darken)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "News\nBlogs",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
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
