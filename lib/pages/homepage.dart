import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wellnesstrackerwebx/pages/LogInPage.dart';
import 'package:wellnesstrackerwebx/pages/analysis.dart';
import 'package:wellnesstrackerwebx/pages/chatbot.dart';
import 'package:wellnesstrackerwebx/pages/userdata.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          title: Text("Wellness Tracker",
            style: TextStyle(fontSize: 20, fontFamily: 'ShareTechMono'),),
          backgroundColor: Color.fromRGBO(0, 77, 64, 1),
          elevation: 50.0,
          //IconButton
          brightness: Brightness.dark,

        ),
        drawer: Container(
          width: 250,
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,

              children: <Widget>[
                Container(
                  height: 80,
                  child: DrawerHeader(
                    child: Center(child: Text('Devathersani', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'ShareTechMono'),)),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 77, 64, 1),

                    ),

                  ),
                ),

                ListTile(
                  title: Center(child: Text('FitBot', style: TextStyle(
                      color: Color.fromRGBO(0, 77, 64, 1),
                      fontSize: 20,
                      fontFamily: 'ShareTechMono'))),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatBot()));
                  },
                ),
                ListTile(
                  title: Center(child: Text('Analysis', style: TextStyle(
                      color: Color.fromRGBO(0, 77, 64, 1),
                      fontSize: 20,
                      fontFamily: 'ShareTechMono'))),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Analysis()));
                  },
                ),
                ListTile(
                  title: Center(child: Text('Logout', style: TextStyle(
                      color: Color.fromRGBO(0, 77, 64, 1),
                      fontSize: 20,
                      fontFamily: 'ShareTechMono'))),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LogInPage()));
                  },
                ),
              ],
            ),
          ),
        ),
        body: Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          color: Colors.black45,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              padding: EdgeInsets.fromLTRB(50, 50, 50, 20),
              child: Column(
                children: <Widget>[
                  Text(
                    'User\'s Health Status',
                    style: TextStyle(
                        fontSize: 35,
                        color: Color.fromRGBO(0, 77, 64, 1),
                        fontFamily: 'ShareTechMono',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 150,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.black87,

                      elevation: 8,
                      child: new InkWell(
                        splashColor: Colors.white70,
                        onTap: () async {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => UserData("Ambika","89","Female","21","162 cm","76 kg","Normal","35.7°C","104 mmHg","13 BPM","120 mg/dL","97 BPM"," 137 mg/dl","98%")));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Text("Username: ",style: TextStyle(color: Colors.black,fontSize: 25,fontFamily:"Kufam")),
                                    Text("Ambika", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Kufam")),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 20,
                                thickness: .5,
                                indent: 10,
                                endIndent: 10,
                                color: Colors.white,
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Average Heart Rate: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "89 BPM",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Gender: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "Female",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Age: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "21",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Height: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "162 cm",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Weight: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "76 kg",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Status: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "Normal",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 150,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.black,

                      elevation: 8,
                      child: new InkWell(
                        splashColor: Colors.white12,
                        onTap: () async {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => UserData("Nithyasree","79 BPM", "Female",  "19", "147 cm", "64 kg", "Normal","36.9°C","111 mmHg","13 BPM","117 mg/dL","80 BPM"," 181 mg/dl","99%")));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Text("Nithyasree", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Kufam")),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 20,
                                thickness: .5,
                                indent: 10,
                                endIndent: 10,
                                color: Colors.white,
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Average Heart Rate: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "79 BPM",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Gender: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "Female",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Age: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "19",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Height: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "147 cm",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Weight: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "64 kg",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Status: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "Normal",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 150,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.black,

                      elevation: 8,
                      child: new InkWell(
                        splashColor: Colors.white12,
                        onTap: () async {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => UserData("Theju","94 BPM","Female", "20","151 cm","52 kg", "Normal","36.8°C","114 mmHg","16 BPM","76 mg/dL","77 BPM"," 143 mg/dl","98%")));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Text("Username: ",style: TextStyle(color: Colors.black,fontSize: 25,fontFamily:"Kufam")),
                                    Text("Theju", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Kufam")),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 20,
                                thickness: .5,
                                indent: 10,
                                endIndent: 10,
                                color: Colors.white,
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Average Heart Rate: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "94 BPM",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Gender: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "Female",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Age: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "20",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Height: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "151 cm",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Weight: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "52 kg",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Status: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "Normal",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 150,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.black,

                      elevation: 8,
                      child: new InkWell(
                        splashColor: Colors.white12,
                        onTap: () async {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => UserData("Harshi", "102 BPM","Female", "20", "156 cm", "45 kg","Abnormal","37.4°C","117 mmHg","14 BPM","72 mg/dL","47 BPM"," 251 mg/dl","98%")));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Text("Username: ",style: TextStyle(color: Colors.black,fontSize: 25,fontFamily:"Kufam")),
                                    Text("Harshi", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Kufam")),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 20,
                                thickness: .5,
                                indent: 10,
                                endIndent: 10,
                                color: Colors.white,
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Average Heart Rate: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "102 BPM",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Gender: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "Female",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Age: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "20",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Height: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "156 cm",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Weight: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "45 kg",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Status: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "Abnormal",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 150,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.black,

                      elevation: 8,
                      child: new InkWell(
                        splashColor: Colors.white12,
                        onTap: () async {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => UserData("Rakshith","68 BPM","Male","18","156 cm","68 kg","Normal","36.6°C","106 mmHg","15 BPM","138 mg/dL","75 BPM"," 180 mg/dl","95%")));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Text("Username: ",style: TextStyle(color: Colors.black,fontSize: 25,fontFamily:"Kufam")),
                                    Text("Rakshith", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Kufam")),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 20,
                                thickness: .5,
                                indent: 10,
                                endIndent: 10,
                                color: Colors.white,
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Average Heart Rate: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "68 BPM",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Gender: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "Male",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Age: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "18",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Height: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "156 cm",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Weight: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "68 kg",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                            "Status: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                        Text(
                                            "Normal",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 18,
                                                fontFamily: "Kufam")
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                  ),


                ],
              ),
            ),
          ),
        )
    );
  }
}

