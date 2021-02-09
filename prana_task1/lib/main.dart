import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'add_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    AddData.tag: (context) => AddData(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prana Login Page',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(), 
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
