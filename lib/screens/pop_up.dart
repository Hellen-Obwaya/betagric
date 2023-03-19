import 'package:beta_agric/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopUp extends StatelessWidget {
  const PopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2016/08/12/05/31/water-1587716_960_720.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.darken),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //**adding image */
            Container(
              height: MediaQuery.of(context).size.height * .25,
              width: MediaQuery.of(context).size.height * .25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/sacher.png"),
                ),
              ),
            ),
            Text(
              "Hack it\nMore food\nBetter environment",
              style: TextStyle(
                  color: Colors.yellow,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Container(
              width: Get.width * .75,
              height: 50,
              child: ElevatedButton(
                child: Text("PROCEED".toUpperCase(),
                    style: TextStyle(fontSize: 14)),
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 112, 132, 142)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                              color: Color.fromARGB(255, 201, 193, 193),
                            )))),
                onPressed: () {
                  Get.to(() => Dashboard());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
