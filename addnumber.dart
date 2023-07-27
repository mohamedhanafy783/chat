import 'package:chat/connectapi/api.dart';
import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

class addnumber extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _addnumber();
  }
}

class _addnumber extends State<addnumber> {
  AddNumber api = new AddNumber();

  List<Contact> data = [];
  bool isLoading = false;
  List numbers = [
    {
      'name': 'mohamed',
      'number': 01140374362,
    },
    {
      'name': 'mohamed',
      'number': 01140374362,
    },
    {
      'name': 'mohamed',
      'number': 01140374362,
    },
    {
      'name': 'mohamed',
      'number': 01140374362,
    },
    {
      'name': 'mohamed',
      'number': 01140374362,
    },
    {
      'name': 'mohamed',
      'number': 01140374362,
    },
    {
      'name': 'mohamed',
      'number': 01140374362,
    },
    {
      'name': 'mohamed',
      'number': 01140374362,
    },
  ];
  void getcontactpermission() async {
    if (await Permission.contacts.isGranted) {
      //contact fetsh
      fetchcontact();
    } else {
      await Permission.contacts.request();
    }
  }

  void fetchcontact() async {
    data = (await ContactsService.getContacts()).toList();

    setState(() {
      isLoading = true;
    });
    print("number of numbers=${data.length}");
  }

  void initState() {
    super.initState();
    getcontactpermission();
    //fetchcontact();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("add number")),
      body: Container(
        child: isLoading == false
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    leading: CircleAvatar(child: Text(data[i].displayName![0])),
                    title: Text(data[i].displayName!),
                    //subtitle: Text(data[i].phones!.elementAt(0).value!),
                    onTap: () {
                      api.f_name = data[i].displayName!;
                      api.f_phone =
                          (data[i].phones!.elementAt(0).value!).toString();
                      api.adddata();
                    },
                  );
                }),
      ),
    );
  }
}
