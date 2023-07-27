import 'dart:convert';

import 'package:chat/connectapi/api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class signup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _signup();
  }
}

class _signup extends State<signup> {
  ApiSignup api = new ApiSignup();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            margin: EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Form(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Image.asset(
                      "images/send.png",
                      height: 200,
                      width: 200,
                    ),
                    Text("Chat Signup", style: TextStyle(fontSize: 30)),
                    ////

                    ///
                    TextFormField(
                      controller: api.name,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        label: Text("name"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: api.phone,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        label: Text("phone number"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: api.pass,
                      obscureText: true,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        label: Text("password"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("conferm password"),
                      ),
                      controller: api.pass1,
                      obscureText: true,
                      keyboardType: TextInputType.name,
                    ),
                    SizedBox(
                      width: 12,
                      height: 20,
                    ),
                    TextFormField(
                      controller: api.age,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text("age"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      onPressed: () {
                        api.adddata();
                        api.getdata();

                        print(api.name.text);
                        Navigator.of(context).pushReplacementNamed("signin");
                      },
                      child: Text(
                        "signup",
                        style: TextStyle(fontSize: 17),
                      ),
                      color: Colors.white30,
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed("signin");
                        },
                        child: Text(
                          "تسجيل الدخول...",
                          style: TextStyle(fontSize: 17),
                        )),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
