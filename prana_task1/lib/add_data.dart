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
          padding: EdgeInsets.fromLTRB(28.0, 20.0, 28.0, 8.0),
          child: TextField(
            autofocus: false,
            // initialValue: 'What is Flutter?',
            controller: TextEditingController()..text = "What is Flutter?",
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(28.0, 10.0, 28.0, 8.0),
          child: TextField(
            autofocus: false,
            // initialValue: 'What is Flutter?',
            keyboardType: TextInputType.multiline,
            controller: TextEditingController()..text = "Dart is a client-optimized programming language for apps on multiple platforms. It is developed by Google and is used to build mobile, desktop, server, and web applications. Dart is an object-oriented, class-based, garbage-collected language with C-style syntax. Dart can compile to either native code or JavaScript.",
            minLines: 20,
            maxLines: null,
            // expands: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(28.0, 10.0, 28.0, 8.0),
          child: Material(
            borderRadius: BorderRadius.circular(30.0),
            shadowColor: Colors.white,
            elevation: 5.0,
            child: MaterialButton(
              minWidth: 200.0,
              height: 42.0,
              onPressed: () {
                Navigator.of(context).pushNamed(HomePage.tag);
              },
              // : Colors.orange[300],
              child: Text('Publish', style: TextStyle(color: Colors.white)),
            ),
            color: Colors.orange[300],
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