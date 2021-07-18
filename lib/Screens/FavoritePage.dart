import 'package:flutter/material.dart';


class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(child:
          ListView(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 40,
                  child: Text('This Month',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Image.asset('assets/images/Inner Oval.png'),
                  title: Row(
                    children: <Widget>[
                      Text('shruthi_',style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                      Text('started following you.',style: TextStyle(

                       // fontWeight: FontWeight.bold,
                      ),),

                    ],
                  ),
                 dense: true,

                 // subtitle: Text("hey!How're you doing"),
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
    );
  }
}

