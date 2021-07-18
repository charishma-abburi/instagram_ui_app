import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    height: 32,
                    width: 75,
                    child: Image.asset('assets/images/Tap 1.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    height: 32,
                    width: 75,
                    child: Image.asset('assets/images/Tap 2.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Container(
                    height: 32,
                    width: 75,
                    child: Image.asset('assets/images/Tap 3.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Container(
                    height: 32,
                    width: 75,
                    child: Image.asset('assets/images/Tap 4.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    height: 32,
                    width: 50,
                    child: Image.asset('assets/images/Tap 5.png'),
                  ),
                ),


              ],
            ),
          ),
           Expanded(
             child: new StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) => new Container(

                    child: Image.asset('assets/images/post $index.jpg',
                      fit: BoxFit.cover,
                    ),

                ),
                staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(2, index.isEven ? 2 : 1),
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
              ),
           )

        ],

    );
  }
}
