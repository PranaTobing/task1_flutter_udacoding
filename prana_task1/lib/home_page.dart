import 'package:flutter/material.dart';
import 'package:prana_task1/add_data.dart';
import 'login_page.dart';
import 'add_data.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: Text('Your Blogs'),
      backgroundColor: Colors.orange[300],
    );
    final drawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Prana Tobing', style: TextStyle(color: Colors.white, fontSize: 20.0),),
            decoration: BoxDecoration(
              color: Colors.orange[300],
            ),
          ),
          ListTile(
            title: Text('Back to Register'),
            onTap: (){
              Navigator.of(context).pushNamed(LoginPage.tag);
            },
          ),
        ],
      ),
    );
    final floatingbutton = FloatingActionButton(
      child: Icon(Icons.add),
      backgroundColor: Colors.grey[400],
      onPressed: (){
        Navigator.of(context).pushNamed(AddData.tag);
      }
    );
    final body = ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(
              color: Colors.black12,
              width: 1.0
            ))
          ),
          child: ListTile(
            leading: CircleAvatar(
              child: Text('W',style: TextStyle(color: Colors.white, fontSize: 20.0),),
              backgroundColor: Colors.brown,
            ),
            title: Text('What is Dart?', style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text(
              'Dart is a client-optimized programming language for apps on multiple platforms. It is developed by Google and is used to build mobile, desktop, server, and web applications. Dart is an object-oriented, class-based, garbage-collected language with C-style syntax. Dart can compile to either native code or JavaScript.',
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
            ),
            trailing: Text('Jan 26, 2021'),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(
              color: Colors.black12,
              width: 1.0
            ))
          ),
          child: ListTile(
            leading: CircleAvatar(
              child: Text('W',style: TextStyle(color: Colors.white, fontSize: 20.0),),
              backgroundColor: Colors.green[300],
            ),
            title: Text('What is Flutter?', style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text(
              "Flutter is Google's UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source. In this codelab, you'll create a simple mobile Flutter app.",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
            ),
            trailing: Text('Jan 26, 2021'),
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: appbar,
      drawer: drawer,
      body: body,
      floatingActionButton: floatingbutton
    );
  }

}

