import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _home();
  }
}

class _home extends State<home> {
  bool obtion = false;
  List home = [
    {
      "id": "1",
      "f_name": "mohamed hanafy",
      "end_mass": "hello my frind",
      "time": "8:30"
    },
    {
      "id": "2",
      "f_name": "mohamed attalaa",
      "end_mass": "goodbay",
      "time": "3:30"
    },
    {"id": "3", "f_name": "saif hanafy", "end_mass": " my bro", "time": "5:43"},
    {
      "id": "4",
      "f_name": "omar mohee",
      "end_mass": "code forces",
      "time": "7:24"
    },
    {
      "id": "5",
      "f_name": "marawan sic",
      "end_mass": "go resturant",
      "time": "4:30"
    },
    {
      "id": "6",
      "f_name": "hatem sayd",
      "end_mass": "ohh i mis you",
      "time": "11:12"
    },
    {"id": "7", "f_name": "ali hamed", "end_mass": "my many", "time": "1:30"},
    {
      "id": "8",
      "f_name": "mohamed hanafy",
      "end_mass": "hello my frind",
      "time": "8:30"
    },
    {
      "id": "9",
      "f_name": "mohamed attalaa",
      "end_mass": "goodbay",
      "time": "3:30"
    },
    {
      "id": "10",
      "f_name": "saif hanafy",
      "end_mass": " my bro",
      "time": "5:43"
    },
    {
      "id": "11",
      "f_name": "omar mohee",
      "end_mass": "code forces",
      "time": "7:24"
    },
    {
      "id": "12",
      "f_name": "marawan sic",
      "end_mass": "go resturant",
      "time": "4:30"
    },
    {
      "id": "13",
      "f_name": "hatem sayd",
      "end_mass": "ohh i mis you",
      "time": "11:12"
    },
    {"id": "14", "f_name": "ali hamed", "end_mass": "my many", "time": "1:30"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Text("home"),

          leading: Container(
            margin: EdgeInsets.only(left: 10),
            child: CircleAvatar(
              child: Image.asset("images/send.png"),
              backgroundColor: Colors.white,
            ),
          ),
          title: Container(
              // margin: EdgeInsets.only(top: 10,right: 10),

              child: Text("Chat",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ))),
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search,
                  size: 35,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.list,
                  size: 35,
                  color: Colors.white,
                )),
          ]),
      body: ListView.builder(
          shrinkWrap: true,
          reverse: true,
          itemCount: home.length,
          itemBuilder: (context, i) {
            return Card(
              margin: EdgeInsets.only(top: 10),
              child: ListTile(
                leading: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.black,
                    )),
                //leading: Image.asset('images/person.png'),
                title: Text(
                  "${home[i]['f_name']} ",
                  maxLines: 1,
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "${home[i]['end_mass']}",
                  maxLines: 1,
                ),
                trailing: Text(
                  "${home[i]['time']}",
                  maxLines: 1,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed("chat");
                },
              ),
            );
          }),
      floatingActionButton: obtion == false
          ? FloatingActionButton(
              backgroundColor: Color.fromARGB(249, 27, 151, 192),
              child: Icon(Icons.workspaces),
              onPressed: () {
                if (obtion == false) {
                  setState(() {
                    obtion = true;
                  });
                }
              },
            )
          : Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: Color.fromARGB(249, 27, 151, 192),
                child: IconButton(
                    onPressed: () {
                      if (obtion == true) {
                        setState(() {
                          obtion = false;
                        });
                      }
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 25,
                    )),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 28,
                backgroundColor: Color.fromARGB(249, 27, 151, 192),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_reaction,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 28,
                backgroundColor: Color.fromARGB(249, 27, 151, 192),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('addnumber');
                    },
                    icon: Icon(
                      Icons.person_add,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
            ]),
    );
  }
}
