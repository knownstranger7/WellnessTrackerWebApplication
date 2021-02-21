import 'dart:html';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:charts_flutter/flutter.dart' as ch;

import 'LogInPage.dart';
import 'chatbot.dart';
import 'homepage.dart';
import 'linchart.dart';

class UserData extends StatefulWidget {
  String _name;
  String _avghr;
  String _gender;
  String _age;
  String _height;
  String _weight;
  String _status;
  String _bt;
  String _bp;
  String _resp;
  String _glucose;
  String _hr;
  String _chol;
  String _oxsat;

  UserData(String name,String avghr, String gender, String age, String height, String weight, String status, String bt, String bp, String resp, String glucose, String hr, String chol, String oxsat){
    this._name=name;
    this._avghr=avghr;
    this._gender=gender;
    this._age=age;
    this._height=height;
    this._weight=weight;
    this._status=status;
    this._bt=bt;
    this._bp=bp;
    this._resp=resp;
    this._glucose=glucose;
    this._hr=hr;
    this._chol=chol;
    this._oxsat=oxsat;


  }

  @override
  _UserDataState createState() => _UserDataState( _name,_avghr,_gender,_age, _height, _weight, _status,_bt, _bp,_resp, _glucose,_hr, _chol,_oxsat);
}

class _UserDataState extends State<UserData> {
  String _name;
  String _avghr;
  String _gender;
  String _age;
  String _height;
  String _weight;
  String _status;
  String _bt;
  String _bp;
  String _resp;
  String _glucose;
  String _hr;
  String _chol;
  String _oxsat;

  _UserDataState(String name,String avghr, String gender, String age, String height, String weight, String status, String bt, String bp, String resp, String glucose, String hr, String chol, String oxsat){
    this._name=name;
    this._avghr=avghr;
    this._gender=gender;
    this._age=age;
    this._height=height;
    this._weight=weight;
    this._status=status;
    this._bt=bt;
    this._bp=bp;
    this._resp=resp;
    this._glucose=glucose;
    this._hr=hr;
    this._chol=chol;
    this._oxsat=oxsat;
  }



  @override
  Widget build(BuildContext context) {



    return Scaffold(
        appBar: AppBar(
          title: Text("Wellness Tracker",style: TextStyle(fontSize:20,fontFamily: 'ShareTechMono'),),
          backgroundColor: Color.fromRGBO(0,77,64,1),
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
                    child: Center(child: Text('Admin',style: TextStyle(color: Colors.white,fontSize:20,fontFamily: 'ShareTechMono'),)),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0,77,64,1),

                    ),

                  ),
                ),
                ListTile(
                  title: Center(child: Text('Users',style: TextStyle(color: Color.fromRGBO(0,77,64,1),fontSize:20,fontFamily: 'ShareTechMono'))),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())) ;

                  },
                ),
                ListTile(
                  title: Center(child: Text('FitBot',style: TextStyle(color: Color.fromRGBO(0,77,64,1),fontSize:20,fontFamily: 'ShareTechMono'))),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChatBot())) ;

                  },
                ),
                ListTile(
                  title: Center(child: Text('Analysis',style: TextStyle(color: Color.fromRGBO(0,77,64,1),fontSize:20,fontFamily: 'ShareTechMono'))),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Center(child: Text('Logout',style: TextStyle(color: Color.fromRGBO(0,77,64,1),fontSize:20,fontFamily: 'ShareTechMono'))),
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
          width: MediaQuery.of(context).size.width,
          color: Colors.black87,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Container(
              // width: MediaQuery
              //     .of(context)
              //     .size
              //     .width,
              padding: EdgeInsets.fromLTRB(50, 50, 50, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width ,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color:Colors.white,

                      elevation: 8,
                      child: new InkWell(
                        splashColor: Colors.black26,
                        onTap: () async {
                          //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> UserData()));
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
                                    Text(_name,style: TextStyle(color: Colors.black,fontSize: 25, fontWeight: FontWeight.bold,fontFamily:"Kufam")),
                                  ],
                                ),
                              ),
                              Divider(
                                height: 20,
                                thickness: .5,
                                indent: 10,
                                endIndent: 10,
                                color: Colors.black,
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child:Row(
                                      children: [
                                        Text(
                                            "Average Heart Rate: ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontFamily:"Kufam")
                                        ),
                                        Text(
                                            _avghr,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily:"Kufam")
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
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontFamily:"Kufam")
                                        ),
                                        Text(
                                            _gender,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily:"Kufam")
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
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontFamily:"Kufam")
                                        ),
                                        Text(
                                            _age,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily:"Kufam")
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
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontFamily:"Kufam")
                                        ),
                                        Text(
                                            _height,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily:"Kufam")
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
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontFamily:"Kufam")
                                        ),
                                        Text(
                                            _weight,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily:"Kufam")
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
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontFamily:"Kufam")
                                        ),
                                        Text(
                                            _status,
                                            style: TextStyle(
                                                color: _status=="Normal" ? Colors.green : Colors.red,
                                                fontSize: 18,
                                                fontFamily:"Kufam")
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
                  SizedBox(height: 10,),
                  Container(
                    height: 600,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color:Colors.white,

                        elevation: 8,
                        clipBehavior: Clip.antiAlias,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(child: Text("Health Data",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight:FontWeight.bold,fontFamily:"Kufam"))),
                              Divider(
                                height: 40,
                                thickness: .5,
                                indent: 10,
                                endIndent: 10,
                                color: Colors.black,
                              ),
                              SizedBox(height: 5,),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width:300,
                                            child: Text("Parameter",style: TextStyle(fontSize: 22),),
                                          ),
                                          Container(
                                            width:150,
                                            child: Text("Level",style: TextStyle(fontSize: 22)),
                                          ),
                                          Container(
                                            width:150,
                                            child: Text("Amount",style: TextStyle(fontSize: 22)),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        height: 40,
                                        thickness: .5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: Colors.black26,
                                      ),
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width:280,
                                            child: Text("Body Temperature",style: TextStyle(fontSize: 20),),
                                          ),
                                          Container(
                                            width:180,
                                            child: new LinearPercentIndicator(
                                                            width: 100.0,
                                                            lineHeight: 8.0,
                                                            percent: 0.2,
                                                            progressColor: Colors.green,
                                                          ),
                                          ),
                                          Container(
                                            width:150,
                                            child: Text(_bt,style: TextStyle(fontSize: 20)),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        height: 30,
                                        thickness: .5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: Colors.black26,
                                      ),
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width:280,
                                            child: Text("Blood Pressure",style: TextStyle(fontSize: 20),),
                                          ),
                                          Container(
                                            width:180,
                                            child: new LinearPercentIndicator(
                                              width: 100.0,
                                              lineHeight: 8.0,
                                              percent: 0.3,
                                              progressColor: Colors.green,
                                            ),
                                          ),
                                          Container(
                                            width:150,
                                            child: Text(_bp,style: TextStyle(fontSize: 20)),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        height: 30,
                                        thickness: .5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: Colors.black26,
                                      ),
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width:280,
                                            child: Text("Respiration",style: TextStyle(fontSize: 20),),
                                          ),
                                          Container(
                                            width:180,
                                            child: new LinearPercentIndicator(
                                              width: 100.0,
                                              lineHeight: 8.0,
                                              percent: 0.5,
                                              progressColor: Colors.green,
                                            ),
                                          ),
                                          Container(
                                            width:150,
                                            child: Text(_resp,style: TextStyle(fontSize: 20)),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        height: 30,
                                        thickness: .5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: Colors.black26,
                                      ),
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width:280,
                                            child: Text("Glucose",style: TextStyle(fontSize: 20),),
                                          ),
                                          Container(
                                            width:180,
                                            child: new LinearPercentIndicator(
                                              width: 100.0,
                                              lineHeight: 8.0,
                                              percent: 0.3,
                                              progressColor: Colors.green,
                                            ),
                                          ),
                                          Container(
                                            width:150,
                                            child: Text(_glucose,style: TextStyle(fontSize: 20)),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        height: 30,
                                        thickness: .5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: Colors.black26,
                                      ),
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width:280,
                                            child: Text("Heart Rate",style: TextStyle(fontSize: 20),),
                                          ),
                                          Container(
                                            width:180,
                                            child: new LinearPercentIndicator(
                                              width: 100.0,
                                              lineHeight: 8.0,
                                              percent: 0.4,
                                              progressColor: Colors.green,
                                            ),
                                          ),
                                          Container(
                                            width:150,
                                            child: Text(_hr,style: TextStyle(fontSize: 20)),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        height: 30,
                                        thickness: .5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: Colors.black26,
                                      ),
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width:280,
                                            child: Text("Cholesterol",style: TextStyle(fontSize: 20),),
                                          ),
                                          Container(
                                            width:180,
                                            child: new LinearPercentIndicator(
                                              width: 100.0,
                                              lineHeight: 8.0,
                                              percent: 0.5,
                                              progressColor: Colors.green,
                                            ),
                                          ),
                                          Container(
                                            width:150,
                                            child: Text(_chol,style: TextStyle(fontSize: 20)),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        height: 30,
                                        thickness: .5,
                                        indent: 10,
                                        endIndent: 10,
                                        color: Colors.black26,
                                      ),
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width:280,
                                            child: Text("Oxygen Saturation",style: TextStyle(fontSize: 20),),
                                          ),
                                          Container(
                                            width:180,
                                            child: new LinearPercentIndicator(
                                              width: 100.0,
                                              lineHeight: 8.0,
                                              percent: 0.9,
                                              progressColor: Colors.green,
                                            ),
                                          ),
                                          Container(
                                            width:150,
                                            child: Text(_oxsat,style: TextStyle(fontSize: 20)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
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



