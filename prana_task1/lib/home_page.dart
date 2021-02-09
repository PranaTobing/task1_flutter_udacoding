import 'package:flutter/material.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: Text('Your Blogs'),
    );
    final drawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Prana Tobing'),
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
    return Scaffold(
      appBar: appbar,
      drawer: drawer,
    );
  }
}