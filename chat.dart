import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class chat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _chat();
  }
}

class _chat extends State<chat> {
  List chat = [
    {
      "id": "1",
      "num_send": "1",
      "num_recieve": "2",
      "mass": "hello my frind",
      "time": "8:30"
    },
    {
      "id": "2",
      "num_send": "2",
      "num_recieve": "1",
      "mass": "goodbay",
      "time": "3:30"
    },
    {
      "id": "3",
      "num_send": "1",
      "num_recieve": "2",
      "mass": " my bro",
      "time": "5:43"
    },
    {
      "id": "4",
      "num_send": "1",
      "num_recieve": "2",
      "mass": "code forces",
      "time": "7:24"
    },
    {
      "id": "5",
      "num_send": "2",
      "num_recieve": "1",
      "mass": "go resturant",
      "time": "4:30"
    },
    {
      "id": "6",
      "num_send": "2",
      "num_recieve": "1",
      "mass": "ohh i mis you",
      "time": "11:12"
    },
    {
      "id": "7",
      "num_send": "1",
      "num_recieve": "2",
      "mass": "my many",
      "time": "1:30"
    },
    {
      "id": "8",
      "num_send": "1",
      "num_recieve": "2",
      "mass": "hello my frind",
      "time": "8:30"
    },
    {
      "id": "9",
      "num_send": "1",
      "num_recieve": "2",
      "mass": "goodbay",
      "time": "3:30"
    },
    {
      "id": "10",
      "num_send": "2",
      "num_recieve": "1",
      "mass": " my bro",
      "time": "5:43"
    },
    {
      "id": "11",
      "num_send": "1",
      "num_recieve": "2",
      "mass": "code forces",
      "time": "7:24"
    },
    {
      "id": "12",
      "num_send": "1",
      "num_recieve": "2",
      "mass": "go resturant",
      "time": "4:30"
    },
    {
      "id": "13",
      "num_send": "2",
      "num_recieve": "1",
      "mass": "ohh i mis you",
      "time": "11:12"
    },
    {
      "id": "14",
      "num_send": "1",
      "num_recieve": "2",
      "mass": "my many",
      "time": "1:30"
    },
    {
      "id": "1",
      "num_send": "1",
      "num_recieve": "2",
      "mass": "hello my frind",
      "time": "8:30"
    },
    {
      "id": "2",
      "num_send": "2",
      "num_recieve": "1",
      "mass": "goodbay",
      "time": "3:30"
    },
    {
      "id": "3",
      "num_send": "1",
      "num_recieve": "2",
      "mass": " my bro",
      "time": "5:43"
    },
    {
      "id": "4",
      "num_send": "1",
      "num_recieve": "2",
      "mass": "code forces",
      "time": "7:24"
    },
    {
      "id": "5",
      "num_send": "2",
      "num_recieve": "1",
      "mass": "go resturant",
      "time": "4:30"
    },
    {
      "id": "6",
      "num_send": "2",
      "num_recieve": "1",
      "mass": "ohh i mis you",
      "time": "11:12"
    },
    {
      "id": "7",
      "num_send": "1",
      "num_recieve": "2",
      "mass": "my many",
      "time": "1:30"
    },
    {
      "id": "8",
      "num_send": "1",
      "num_recieve": "2",
      "mass": "hello my frind",
      "time": "8:30"
    },
    {
      "id": "9",
      "num_send": "1",
      "num_recieve": "2",
      "mass": "goodbay",
      "time": "3:30"
    },
    {
      "id": "10",
      "num_send": "2",
      "num_recieve": "1",
      "mass": " my bro",
      "time": "5:43"
    },
    {
      "id": "11",
      "num_send": "1",
      "num_recieve": "2",
      "mass": "code forces",
      "time": "7:24"
    },
    {
      "id": "12",
      "num_send": "1",
      "num_recieve": "2",
      "mass": "go resturant",
      "time": "4:30"
    },
    {
      "id": "13",
      "num_send": "2",
      "num_recieve": "1",
      "mass": "ohh i mis you",
      "time": "11:12"
    },
    {
      "id": "14",
      "num_send": "1",
      "num_recieve": "2",
      "mass": "my many",
      "time": "1:30"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Text("home"),

          leading: Container(
            margin: EdgeInsets.only(left: 10),
            child: CircleAvatar(
              child: Icon(
                Icons.person,
                size: 35,
                color: Colors.black,
              ),
              //child: Image.asset("images/person.png"),
              backgroundColor: Colors.grey.shade300,
            ),
          ),
          title: Container(
              // margin: EdgeInsets.only(top: 10,right: 10),

              child: Text(
            "mohamed hanafy",
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
            maxLines: 1,
          )),
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.list,
                  size: 35,
                  color: Colors.white,
                )),
          ]),

      body: Container(
        padding: EdgeInsets.only(bottom: 80),
        
        width: double.infinity,
        // decoration: BoxDecoration(
        //   image: DecorationImage(image: AssetImage('images/background.jpg'))
        // ),
        color: Colors.white,
        child: ListView.builder(
          shrinkWrap: true,
          reverse: true,
          itemCount: chat.length,
          itemBuilder: (context, i) {
            //if statment
            //send 
          return chat[i]['num_send']=="1"? Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(bottom: 5,right: 150,left: 5),
              padding: EdgeInsets.all(5),
              width: 300,
              decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(10),
                  
                  color:Colors.grey.shade300,
                ),
              child: Text("${chat[i]['mass']}",
              style: TextStyle(fontSize: 22),
              
              
              )
              ):
              ///recieved message
            Container(
              
              alignment: Alignment.topRight,
              width: 300,
              margin: EdgeInsets.only(bottom: 5,left: 150,right: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(248, 76, 205, 248),
              ),
              child: Text("${chat[i]['mass']}",
              style: TextStyle(fontSize: 22),


            )
            );
        }),
      ),
      
      floatingActionButton: Row(
        children: [
          Expanded(
              flex: 7,
              child: TextFormField(
                controller: null,
                cursorColor: Colors.white,
                minLines: 1,
                maxLines: 5,
                
                decoration: InputDecoration(
                  hintText: "massege...",
                  fillColor:Colors.white,
                  filled: true,
                  
                  
                  /////////icons
                  icon: Text("  "),
                  prefixIcon: IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      icon: Icon(
                        Icons.attachment,
                        size: 30,
                        color: Colors.grey,
                      )),

                  suffixIcon: IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {},
                      icon: Icon(
                        Icons.face_retouching_natural,
                        size: 25,
                        color: Colors.grey,
                      )),
                  ////////////////////////////outline
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(27)),
                      borderSide: BorderSide(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(27)),
                      borderSide: BorderSide(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(27)),
                      borderSide: BorderSide(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1)),
                ),
              )),
          Expanded(
              flex: 1,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send,
                      size: 40,
                      color: Color.fromARGB(
                        249,
                        27,
                        151,
                        192,
                      )))),
        ],
      ),

      // bottomNavigationBar:BottomNavigationBar(
        
      //   items: [
      //     BottomNavigationBarItem(icon:Icon(Icons.add) ),
      //     BottomNavigationBarItem(icon:Icon(Icons.add) )
      //   ]) ,
    );
  }
}
