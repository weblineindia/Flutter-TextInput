import 'package:custom_textinput/screens/main_screen.dart';
import 'package:flutter/material.dart';

/*
Author Name  :  WeblineIndia  |  https://www.weblineindia.com/
For more such software development components and code libraries, visit us at
https://www.weblineindia.com/software-development-resources.html 
Our Github URL : https://github.com/weblineindia
*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 253, 188, 51),
      ),
      home: MainScreen(),
    );
  }
}

