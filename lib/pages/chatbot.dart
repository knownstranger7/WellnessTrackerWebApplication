import 'package:flutter/cupertino.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:intl/intl.dart';

import 'LogInPage.dart';
import 'homepage.dart';

class ChatBot extends StatefulWidget {

  ChatBot({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _ChatBotState createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {

  void response(query) async {
    AuthGoogle authGoogle = await AuthGoogle(
        fileJson: "assets/service.json")
        .build();
    Dialogflow dialogflow = Dialogflow(authGoogle: authGoogle, language: Language.english);
    AIResponse aiResponse = await dialogflow.detectIntent(query);
    print(aiResponse.getMessage());
    setState(() {
      messsages.insert(0, {
        "data": 0,
        "message": aiResponse.getMessage().toString()
      });
    });
  }

  final messageInsert = TextEditingController();
  List<Map> messsages = List();

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
                    child: Center(child: Text('Devathersani',style: TextStyle(color: Colors.white,fontSize:20,fontFamily: 'ShareTechMono'),)),
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
          padding: EdgeInsets.fromLTRB(100,20,100,20),
          color: Colors.black87,
          child: Column(
            children: <Widget>[
              SizedBox(height: 30,),
              Text(
                'FitBot',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontFamily: 'ShareTechMono',
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 10),
                child: Text("Today, ${DateFormat("Hm").format(DateTime.now())}", style: TextStyle(
                  fontSize: 12,color: Colors.white, fontFamily: 'ShareTechMono',
                ),),
              ),
              Flexible(
                  child: ListView.builder(
                      reverse: true,
                      itemCount: messsages.length,
                      itemBuilder: (context, index) => chat(
                          messsages[index]["message"].toString(),
                          messsages[index]["data"]))),
              SizedBox(
                height: 20,
              ),

              Divider(
                height: 5.0,
                color: Colors.white,
              ),
              Container(


                child: ListTile(

                  leading: IconButton(
                    icon: Icon(Icons.sentiment_very_satisfied, color: Colors.white, size: 35,),
                  ),

                  title: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(
                          15)),
                      color: Color.fromRGBO(220, 220, 220, 1),
                    ),
                    padding: EdgeInsets.only(left: 15),
                    child: TextFormField(
                      controller: messageInsert,
                      decoration: InputDecoration(
                        hintText: "Enter a Message...",
                        hintStyle: TextStyle(
                          color: Colors.black26,
                          fontFamily: 'ShareTechMono',
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),

                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black
                      ),
                      onChanged: (value) {

                      },
                    ),
                  ),

                  trailing: IconButton(

                      icon: Icon(

                        Icons.send,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      onPressed: () {

                        if (messageInsert.text.isEmpty) {
                          print("empty message");
                        } else {
                          setState(() {
                            messsages.insert(0,
                                {"data": 1, "message": messageInsert.text});
                          });
                          response(messageInsert.text);
                          messageInsert.clear();
                        }
                        FocusScopeNode currentFocus = FocusScope.of(context);
                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                      }),

                ),

              ),

              SizedBox(
                height: 15.0,
              )
            ],
          ),
        )
    );
  }
  Widget chat(String message, int data) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),

      child: Row(
        mainAxisAlignment: data == 1 ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          data == 0 ? Container(
            height: 60,
            width: 60,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/robot.webp"),
            ),
          ) : Container(),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: Bubble(
                radius: Radius.circular(15.0),
                color: data == 0 ? Color.fromRGBO(23, 157, 139, 1) : Colors.orangeAccent,
                elevation: 0.0,

                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      SizedBox(
                        width: 10.0,
                      ),
                      Flexible(
                          child: Container(
                            constraints: BoxConstraints( maxWidth: 450),
                            child: Text(
                              message,
                              style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold,fontFamily: 'ShareTechMono',),
                            ),
                          ))
                    ],
                  ),
                )),
          ),
          data == 1? Container(
            height: 60,
            width: 60,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/user.png"),
            ),
          ) : Container(),
        ],
      ),
    );
  }
}

