import 'package:flutter/material.dart';
import 'package:instagram_ui_app/Screens/SignUp.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'Home.dart';

const greycolor = Color(0xFFE0E0E0);

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late bool _success;
  late String? _userEmail;
  final _auth = FirebaseAuth.instance;
 // void _signInWithEmailAndPassword() async {
  //  final User? user = (await _auth.signInWithEmailAndPassword(
  //    email: _emailController.text,
  //    password: _passwordController.text,
 //   ))
      /*  .user;
    if (user != null) {
      setState(() {
        _success = true;
        _userEmail = user.email;
      });
    } else {
      setState(() {
        _success = false;
      });
    }
  } */
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
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
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
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    controller: _emailController,
                    cursorColor: Colors.black38,
                    cursorWidth: 0.5,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 33, 0),
                      hintText: "Username",
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: greycolor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: greycolor),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(35, 10, 33, 0),
                  child: TextFormField(
                    controller: _passwordController,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    cursorColor: Colors.black38,
                    cursorWidth: 0.5,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 33, 0),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: greycolor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: greycolor),
                      ),
                    ),
                    obscureText: true,
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
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                    onPressed: () async {
                      /* var currentState = _formKey.currentState;
                      var validate = currentState?.validate();
                      if (validate != null) {
                        _signInWithEmailAndPassword();
                      }     */

                      _auth.signInWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text
                      );
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
      ),
    );
  }
}
