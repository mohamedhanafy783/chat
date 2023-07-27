
import 'package:chat/addnumber.dart';
import 'package:chat/chat.dart';
import 'package:chat/checksignup.dart';
import 'package:chat/home.dart';
import 'package:chat/signin.dart';

import 'package:chat/signup1.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'addimageprofil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        appBarTheme:AppBarTheme(color: Color.fromARGB(249, 27, 151, 192)) ,
        
      ),
      home: signin(),
      routes: {
        "signin": (context) => signin(),
        "signup": (context) => signup(),
        "checksignup": (context) => checksignup(),
        "home":(context) => home(),
        "addimage":(context) => addimage(),
        "chat":(context) => chat(),
        "addnumber":(context) => addnumber(),

        },
    );
  }
}
