import 'package:chat/connectapi/api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class signin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _signin();
  }
}

class _signin extends State<signin> {
  ApiSignin api = new ApiSignin();
  var id;
  void checkrefr() async {
    SharedPreferences key = await SharedPreferences.getInstance();

    id = key.getInt('key');
    if (await id != null) {
      Navigator.of(context).pushReplacementNamed("home");
    }
    print("//${await id}");
    print(id);
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    checkrefr();
    
    
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Container(
              margin: EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Column(
                children: [
                  Image.asset(
                    "images/send.png",
                    height: 200,
                    width: 200,
                  ),
                  Text("Chat Login", style: TextStyle(fontSize: 30)),
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
                  MaterialButton(
                    onPressed: () async {
                      api.getdata();

                      if (api.data.length > 0) {
                        SharedPreferences key =
                            await SharedPreferences.getInstance();

                        key.setInt('key', api.data[0]['id']);
                        print(api.data[0]['id']);
                        Navigator.of(context).pushReplacementNamed("home");
                      }
                    },
                    child: Text(
                      "signin",
                      style: TextStyle(fontSize: 17),
                    ),
                    color: Colors.white30,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("signup");
                      },
                      child: Text(
                        "...انشاء حساب",
                        style: TextStyle(fontSize: 17),
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
