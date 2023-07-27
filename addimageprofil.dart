import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
class addimage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _addimage();
  }
}

class _addimage extends State<addimage> {
  File? image;

  // @override
  // void initState() {
    
  //   super.initState();
  //   image = ""as File;
  // }

  final ImagePicker imagepicker = new ImagePicker();
  uploadimagecamera() async {
    final getimage = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      image = File(getimage!.path);
    });
  }
  uploadimagestudio() async {
    final getimage = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      image = File(getimage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 250),
          child: Column(
            children: [
              
              CircleAvatar(
                
                child: image==null?Text ("add image",style: TextStyle(color: Colors.black,fontSize: 30),):Image.file(image!,fit: BoxFit.cover,),
                radius: 130,
                backgroundColor:Colors.black12 ,
                //backgroundImage: FileImage(image!,scale: 0.5),
                
                
              ),
              // Container(
              //   child: image==null?Text ("add image",style: TextStyle(color: Colors.black,fontSize: 30),):Image.file(image!,fit: BoxFit.cover,),
                
              //   decoration: BoxDecoration(
                  
              //     borderRadius: BorderRadius.circular(150),
              //     color: Colors.black12,
              //   ),
              //   height: 250,
              //   width: 250,
              // ),
              SizedBox(
                height: 30,
              ),
              MaterialButton(
                onPressed: uploadimagecamera,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera),
                    Text('camera')
                  ],
                ),
                color:  Color.fromARGB(248, 247, 248, 249),
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                onPressed: uploadimagestudio,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.photo),
                    Text('photo')
                  ],
                ),
                color:  Color.fromARGB(248, 247, 248, 249),
                
              ),
              SizedBox(
                height: 15,
              ),
              MaterialButton(
                onPressed: (){
                  Navigator.of(context).pushReplacementNamed("home");
                },
                child:image==null? Text('Skip',style: TextStyle(fontSize: 20),):Text('ok',style: TextStyle(fontSize: 20)),
                color:  Colors.white30,
                
              ),

            ],
          ),
        ),
      ),
    );
  }
}
