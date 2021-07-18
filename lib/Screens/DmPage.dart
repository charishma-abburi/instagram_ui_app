import 'package:flutter/material.dart';
//import 'package:instagram_ui_app/Screens/HomePage.dart';
const storyBorderColor = [
  Color(0xFF9B2282),
  Color(0xFFEEA863)
];
const greycolor= Color(0xFFE0E0E0);

final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

class DmPage extends StatelessWidget {
  const DmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
       // automaticallyImplyLeading: false,
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_outlined),
          color: Colors.black, onPressed: () {Navigator.pop(context);},
        ),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 60.0,right: 0),
              child: Text('kate_52',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ) ,
            Padding(
              padding: const EdgeInsets.only(left: 0.0,right: 20.0),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down),
               color: Colors.black,),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 40.0,right: 0),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.add),
                color: Colors.black,),
            ),

          ],
        ),

        centerTitle: true,

      ),
      body: Column(
        children:<Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding:
                  EdgeInsets.fromLTRB(5, 10, 10, 0),
                  labelText: "Search",labelStyle: TextStyle(
                  color: Colors.grey,
                ),
                  prefixIcon: Icon(Icons.search,
                    color: Colors.grey,
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10.0)),
                    borderSide: BorderSide(color: greycolor),
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
            ),
          Expanded(
            child: ListView(
              //padding: const EdgeInsets.fromLTRB(10,0,10,8),
              children: <Widget>[
                Container(
                  child: ListTile(
                    leading: Image.asset('assets/images/Inner Oval.png'),
                    title: Text('kate_52'),
                    subtitle: Text("hey!How're you doing"),
                    trailing: Icon(Icons.photo_camera_outlined,
                      color: Colors.grey,
                      size: 35,
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Image.asset('assets/images/Inner Oval.png'),
                    title: Text('kate_52'),
                    subtitle: Text("hey!How're you doing"),
                    trailing: Icon(Icons.photo_camera_outlined,
                      color: Colors.grey,
                      size: 35,
                    ),
                  ),
                ),
              ],
    ),
    ),
    ],
        
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: [

          BottomNavigationBarItem(icon: Icon(Icons.camera_alt),label: 'icon'),
          BottomNavigationBarItem(icon: Text('Camera',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
             label: 'icon'
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}

