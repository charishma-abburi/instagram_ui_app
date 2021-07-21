import 'package:flutter/material.dart';
import 'package:instagram_ui_app/Screens/SignUp.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'Home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String _email, _password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        // automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(90, 150, 96, 0),
                child: Image(
                  image: AssetImage('assets/images/Instagram Logo.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(35, 40, 33, 0),
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 33, 0),
                      hintText: "Username",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _email = value.trim();
                      });
                    }),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(35, 10, 33, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 33, 0),
                    hintText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                  ),
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {
                      _password = value.trim();
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(200, 10, 10, 0),
                child: Text("Forgot Password?"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(35, 30, 33, 0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    minimumSize: Size(307, 50),
                    //  padding: EdgeInsets.symmetric(horizontal: 16.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  onPressed: () {
                    auth.signInWithEmailAndPassword(
                        email: _email, password: _password);
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Text('Log In'),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Text("Don't have an account?"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                    // backgroundColor: Colors.blue,
                    //  minimumSize: Size(307, 50),
                    //  padding: EdgeInsets.symmetric(horizontal: 16.0),
                    // shape: const RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    // ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Text('Sign Up'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
