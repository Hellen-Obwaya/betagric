import 'package:beta_agric/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Donate extends StatefulWidget {
  const Donate({super.key});

  @override
  State<Donate> createState() => _DonateState();
}

class _DonateState extends State<Donate> {
  //controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController contactController = TextEditingController();
//to handle form input changes
  var _formKey = GlobalKey<FormState>();
  var isloading = false;
  Future<void> _submit() async {
    final isvalid = _formKey.currentState?.validate();
    if (!isvalid!) {
      return;
    }
    if (await MainController.to.createDonation(nameController.text.trim(),
        locationController.text.trim(), contactController.text.trim())) {
      Get.back(closeOverlays: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 212, 242, 178),
      //APPBAR
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Donate"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),

          //form
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text(
                  "Donate seedlings or farm tools ",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                //styling
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (value) {
                    //Validator
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid Name';
                    }
                    return null;
                  },
                ),
                //box styling
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                //text input
                TextFormField(
                  decoration: InputDecoration(labelText: 'Location'),
                  controller: locationController,
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (value) {},
                  //obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid Location!';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Contacts'),
                  controller: contactController,
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (value) {},
                  //obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid Phone number!';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                TextButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 24.0, color: Colors.green),
                  ),
                  onPressed: () {
                    _submit();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
