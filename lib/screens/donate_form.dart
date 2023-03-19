import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Donate extends StatefulWidget {
  const Donate({super.key});

  @override
  State<Donate> createState() => _DonateState();
}

class _DonateState extends State<Donate> {
//to handle form input changes
  var _formKey = GlobalKey<FormState>();
  var isloading = false;
  void _submit() {
    final isvalid = _formKey.currentState?.validate();
    if (!isvalid!) {
      return;
    }
    _formKey.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Donate"),
        leading: IconButton(
          icon: Icon(Icons.filter_vintage),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      //body
      body: Padding(
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
                keyboardType: TextInputType.name,
                onFieldSubmitted: (value) {
                  //Validator
                },
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
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
                keyboardType: TextInputType.name,
                onFieldSubmitted: (value) {},
                obscureText: true,
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
                keyboardType: TextInputType.name,
                onFieldSubmitted: (value) {},
                obscureText: true,
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
                onPressed: () => _submit(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
