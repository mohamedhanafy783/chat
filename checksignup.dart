import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class checksignup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _checksignup();
  }
}

class _checksignup extends State<checksignup> {
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
                  Text("check code", style: TextStyle(fontSize: 30)),
                  TextFormField(
                    controller: null,
                    decoration: InputDecoration(
                      label: Text("code number"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: null,
                    decoration: InputDecoration(
                      label: Text("code friend"),
                    ),
                  ),
                  
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("addimage");
                    },
                    child: Text(
                      "check",
                      style: TextStyle(fontSize: 17),
                    ),
                    color: Colors.white30,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                  ),
                  
                  
                ],
              )),
        ),
      ),
    );
  }
}
