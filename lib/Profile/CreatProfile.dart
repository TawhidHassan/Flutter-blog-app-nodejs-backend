

import 'package:flutter/material.dart';

import '../NetworkHandler.dart';

class CreatProfile extends StatefulWidget {
  CreatProfile({Key key}) : super(key: key);

  @override
  _CreatProfileState createState() => _CreatProfileState();
}

class _CreatProfileState extends State<CreatProfile> {
  final networkHandler = NetworkHandler();
  bool circular = false;
  final _globalkey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _profession = TextEditingController();
  TextEditingController _dob = TextEditingController();
  TextEditingController _title = TextEditingController();
  TextEditingController _about = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: _globalkey,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            children: [
              nameTextField(),
              SizedBox(
                height: 20,
              ),
              professionTextField(),
              SizedBox(
                height: 20,
              ),
              dobField(),
              SizedBox(
                height: 20,
              ),
              titleTextField(),
              SizedBox(
                height: 20,
              ),
              aboutTextField(),
              SizedBox(
                height: 20,
              ),

              InkWell(
                onTap: () async {

                },
                child: Center(
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: circular
                          ? CircularProgressIndicator()
                          : Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }



  Widget nameTextField() {
    return TextFormField(
      controller: _name,
      validator: (value) {
        if (value.isEmpty) return "Name can't be empty";

        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.teal,
            )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
              width: 2,
            )),
        prefixIcon: Icon(
          Icons.person,
          color: Colors.green,
        ),
        labelText: "Name",
        helperText: "Name can't be empty",
        hintText: "Dev Stack",
      ),
    );
  }

  Widget professionTextField() {
    return TextFormField(
      controller: _profession,
      validator: (value) {
        if (value.isEmpty) return "Profession can't be empty";

        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.teal,
            )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
              width: 2,
            )),
        prefixIcon: Icon(
          Icons.person,
          color: Colors.green,
        ),
        labelText: "Profession",
        helperText: "Profession can't be empty",
        hintText: "Full Stack Developer",
      ),
    );
  }

  Widget dobField() {
    return TextFormField(
      controller: _dob,
      validator: (value) {
        if (value.isEmpty) return "DOB can't be empty";

        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.teal,
            )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
              width: 2,
            )),
        prefixIcon: Icon(
          Icons.person,
          color: Colors.green,
        ),
        labelText: "Date Of Birth",
        helperText: "Provide DOB on dd/mm/yyyy",
        hintText: "01/01/2020",
      ),
    );
  }

  Widget titleTextField() {
    return TextFormField(
      controller: _title,
      validator: (value) {
        if (value.isEmpty) return "Title can't be empty";

        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.teal,
            )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
              width: 2,
            )),
        prefixIcon: Icon(
          Icons.person,
          color: Colors.green,
        ),
        labelText: "Title",
        helperText: "It can't be empty",
        hintText: "Flutter Developer",
      ),
    );
  }

  Widget aboutTextField() {
    return TextFormField(
      controller: _about,
      validator: (value) {
        if (value.isEmpty) return "About can't be empty";

        return null;
      },
      maxLines: 4,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.teal,
            )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orange,
              width: 2,
            )),
        labelText: "About",
        helperText: "Write about yourself",
        hintText: "I am Dev Stack",
      ),
    );
  }
}
