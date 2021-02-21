

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wellnesstrackerwebx/pages/homepage.dart';




class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  var _username;
  var _password;

  final usernameCon = new TextEditingController();
  final passwordCon = new TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(

        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Form(
            key: _formKey,
            child: AnnotatedRegion<SystemUiOverlayStyle>(
              value: SystemUiOverlayStyle.light,
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Container(
                  width: (MediaQuery.of(context).size.width),
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black87,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: (MediaQuery.of(context).size.width),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("WELLNESS",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'ShareTechMono',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                    width: 90,
                                    height: 90,
                                    child: Image.asset("assets/white.png")
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("TRACKER",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'ShareTechMono',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Container(
                              width: (MediaQuery.of(context).size.width)/4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          fontSize: 32,
                                          fontFamily: 'ShareTechMono',
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    'Email',
                                    style: TextStyle(color: Colors.white, fontSize: 15),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 15,
                                    child: TextFormField(
                                      controller: usernameCon,
                                      keyboardType: TextInputType.text,
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontFamily: 'OpenSans'),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(top: 14.0),
                                        hintText: 'Enter your email',
                                        hintStyle: TextStyle(
                                            color: Colors.white54, fontSize: 12),
                                        suffixIcon: Icon(Icons.mail,
                                            color: Colors.white
                                          //color: Colors.black54,
                                        ),
                                      ),
                                      validator: (value) => value.isEmpty
                                          ? 'Email can\'t be empty'
                                          : null,
                                      onSaved: (value) => _username = value.trim(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.white12,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Password',
                                    style: TextStyle(color: Colors.white, fontSize: 15),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 15,
                                    child: TextFormField(
                                      controller: passwordCon,
                                      obscureText: true,
                                      keyboardType: TextInputType.text,
                                      style: TextStyle(
                                          color: Colors.white54,
                                          fontFamily: 'OpenSans'),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(top: 14.0),
                                        hintText: 'Enter your password',
                                        hintStyle: TextStyle(
                                            color: Colors.white54, fontSize: 12),
                                        suffixIcon:
                                        Icon(Icons.lock, color: Colors.white),
                                      ),
                                      validator: (value) => value.isEmpty
                                          ? 'Password can\'t be empty'
                                          : null,
                                      onSaved: (value) => _password = value.trim(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.white12,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                    child: RaisedButton(
                                      padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                                      onPressed: () async {
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => HomePage()));
                                      },
                                      color: Colors.white,
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20,fontFamily: "ShareTechMono"),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}



createAlertDialog1(BuildContext context) {
  TextEditingController customController = TextEditingController();
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'INVALID LOGIN',
                style: TextStyle(
                    color: Color.fromRGBO(159, 163, 167, 1),
                    fontFamily: 'Arimo',
                    fontSize: 14.5),
              ),
            ],
          ),
          elevation: 20.0,
          //backgroundColor: Color.fromRGBO(34, 45, 54, 1),
        );
      });
}

