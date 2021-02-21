import 'package:flutter/material.dart';
import 'package:wellnesstrackerwebx/pages/LogInPage.dart';
import 'package:wellnesstrackerwebx/pages/homepage.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: LogInPage(),
    debugShowCheckedModeBanner: false,
  ));
}
