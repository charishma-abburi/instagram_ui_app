

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';
import 'SignUp.dart';

class LoginHome extends StatelessWidget {
  const LoginHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
         // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(97, 240, 96, 0),
                child : Image(
                  image : AssetImage('assets/images/Instagram Logo.png'),
                ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(35, 150, 33, 0),
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
                          MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                child: Text('Log In'),
              ),
              ),
            Padding(
              padding: EdgeInsets.fromLTRB(35, 50, 33, 0),
              child :TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue,
               //   backgroundColor: Colors.white,
                  textStyle: TextStyle(
                      color: Colors.blue,
                    //  fontSize: 40,
                     // fontStyle: FontStyle.italic
                  ),
                  minimumSize: Size(307, 50),
                  side: BorderSide(color: Colors.blue, width: 1),
                  //  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
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


    );
  }


}
