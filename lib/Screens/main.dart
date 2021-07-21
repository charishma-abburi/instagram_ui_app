import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'LoginHome.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _fbApp,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print('You have some error');
            return Text('Something went wrong');
          } else if (snapshot.hasData) {
            return LoginHome();
          } else {
            return Text("Hey, how're you doing!");
          }
        },
      ),
     
    );
  }
}
