import 'package:chat/checksignup.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

String ip = '192.168.1.2';

class ApiSignup {
  TextEditingController name = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  TextEditingController pass1 = new TextEditingController();
  TextEditingController age = new TextEditingController();
  String url = "http://$ip/chat/signup.php";

  adddata() async {
    //String url = "http://192.168.1.7/chat/signup.php";

    var response = await http.post(Uri.parse(url),
        body: jsonEncode(<String, String>{
          'name': '${name.text}',
          'phone': '${phone.text}',
          'pass': '${pass.text}',
          'age': '${age.text}',
        }));

    var responsebody = jsonEncode(response.body);
    print(name.text);
    print(responsebody);
    return responsebody;
  }

  List data = [];
  void getdata() async {
    var response = await http.get(Uri.parse(url));
    var responsebody = jsonDecode(response.body);

    data.addAll(responsebody);

    print(data);
    //set shard prefruns key
    SharedPreferences key = await SharedPreferences.getInstance();

    key.setInt('key', data[0]['id']);
    print(data[0]['id']);
  }
}

class ApiSignin {
  TextEditingController phone = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  //get account

  List data = [];
  void getdata() async {
    String url =
        "http://$ip/chat/signin.php?phone=${phone.text}&pass=${pass.text}";
    var response = await http.get(Uri.parse(url));
    var responsebody = jsonDecode(response.body);

    data.addAll(responsebody);

    print(data);
  }
}

class AddNumber {
  int? id;
  String? f_name;
  String? f_phone;

  // void checkrefr() async {
    
  // }

  adddata() async {
    // checkrefr();
    SharedPreferences key = await SharedPreferences.getInstance();

    id = key.getInt('key');

    String url = "http://$ip/chat/addnumber.php";

    var response = await http.post(Uri.parse(url),
        body: jsonEncode(<String, String>{
          'myid':'${id}',
          'fname': '${f_name}',
          'fphone': '${f_phone}',
          
        }));

      var responsebody = jsonEncode(response.body);
      print(responsebody);
      return responsebody;
  }
}
