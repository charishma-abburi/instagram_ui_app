import 'package:flutter/material.dart';
import 'package:instagram_ui_app/Screens/Home.dart';
import 'package:instagram_ui_app/Screens/Login.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Center(
        child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Padding(
        padding: EdgeInsets.fromLTRB(97, 200, 96, 0),
         child : Image(
          image : AssetImage('assets/images/Instagram Logo.png'),
         ),
           ),
          Padding(
            padding: EdgeInsets.fromLTRB(35, 50, 33, 0),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding:
                EdgeInsets.fromLTRB(10, 10, 33, 0),
                labelText: "Username",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)),
                  borderSide:
                  BorderSide(color: Colors.blueGrey),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(35, 10, 33, 0),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding:
                EdgeInsets.fromLTRB(10, 10, 33, 0),
                labelText: "Email",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)),
                  borderSide:
                  BorderSide(color: Colors.blueGrey),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(35, 10, 33, 0),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding:
                EdgeInsets.fromLTRB(10, 10, 33, 0),
                labelText: "Password",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)),
                  borderSide:
                  BorderSide(color: Colors.blueGrey),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(35, 10, 33, 0),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding:
                EdgeInsets.fromLTRB(10, 10, 33, 0),
                labelText: "Confirm Password",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)),
                  borderSide:
                  BorderSide(color: Colors.blueGrey),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(35, 30, 33, 0),
            child :TextButton(
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Text('Sign Up'),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child : Text("Already have an account?"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0,0, 0),
            child :TextButton(
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
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text('Log In'),
            ),
          ),
        ],

        ),
        ),
    );
  }
}

