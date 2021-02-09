import 'package:flutter/material.dart';
import 'home_page.dart';

class AddData extends StatelessWidget {
  static String tag = 'add-data';

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: Text('Create a Post'),
      backgroundColor: Colors.orange[300],
      automaticallyImplyLeading: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back), 
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
      ),
    );
    final body = ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(8.0),
          child: TextFormField(
            autofocus: false,
            initialValue: 'What is Flutter?',
            decoration: InputDecoration(
              // hintText: 'What is Flutter',
              // hintStyle: TextStyle(color: Colors.white38),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              // fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.orange[200],
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.orange[400],
                  width: 2.0,
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          child: TextFormField(
            autofocus: false,
            initialValue: "Dart is a client-optimized programming language for apps on multiple platforms. It is developed by Google and is used to build mobile, desktop, server, and web applications. Dart is an object-oriented, class-based, garbage-collected language with C-style syntax. Dart can compile to either native code or JavaScript.",
            expands: true,
            decoration: InputDecoration(
              // hintText: 'What is Flutter',
              // hintStyle: TextStyle(color: Colors.white38),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              // fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.orange[200],
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.orange[400],
                  width: 2.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: appbar,
      body: body,
    );
  }
}