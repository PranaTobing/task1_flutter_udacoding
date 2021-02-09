import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final judul = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Blogging',
        style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
    final fullname = TextFormField(
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Full Name',
        hintStyle: TextStyle(color: Colors.white38),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.white60,
            width: 2.0,
          ),
        ),
        prefixIcon: Icon(Icons.person,color: Colors.white,),
      ),
      style: TextStyle(color: Colors.white),
    );
    final email = TextFormField(
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Validate Email',
        hintStyle: TextStyle(color: Colors.white38),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.white60,
            width: 2.0,
          ),
        ),
        prefixIcon: Icon(Icons.alternate_email, color: Colors.white,),
      ),
    );
    final pass = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        hintStyle: TextStyle(color: Colors.white38),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.white60,
            width: 2.0,
          ),
        ),
        prefixIcon: Icon(Icons.lock,color: Colors.white,),
      ),
    );
    final confpass = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Validate Password',
        hintStyle: TextStyle(color: Colors.white38),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.white60,
            width: 2.0,
          ),
        ),
        prefixIcon: Icon(Icons.lock,color: Colors.white,),
      ),
    );

    final signupButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
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
          // color: Colors.lightBlueAccent,
          child: Text('Sign Up', style: TextStyle(color: Colors.lightBlue)),
        ),
      ),
    );

    final signinbutton = RichText(
      text: TextSpan(
        text: 'Already have an account? ',
        style: TextStyle(fontSize: 14.0, color:Colors.white),
        children: <TextSpan>[
          TextSpan(
            text: 'Sign In',
            style: TextStyle(decoration: TextDecoration.underline, color: Colors.black),
          )
        ],
      ),
      textAlign: TextAlign.center,
    );
    
    return Scaffold(
      backgroundColor: Colors.orange[300],
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left:24.0, right:24.0),
          children: <Widget>[
            judul,
            SizedBox(height: 48.0,),
            fullname,
            SizedBox(height: 15.0,),
            email,
            SizedBox(height: 15.0,),
            pass,
            SizedBox(height: 15.0,),
            confpass,
            SizedBox(height: 24.0,),
            signupButton,
            SizedBox(height: 8.0,),
            signinbutton
          ],
        )
      ),
    );
  }
}