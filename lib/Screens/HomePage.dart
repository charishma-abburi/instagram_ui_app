//import 'package:flutter/animation.dart';


import 'package:flutter/material.dart';
import 'package:instagram_ui_app/Screens/PostItem.dart';
//import 'package:instagram_ui_app/Screens/InstaStories.dart';
//import 'package:instagram_ui_app/Screens/InstaStories.dart';
//import 'package:instagram_ui_app/Screens/Instalist.dart';
//import 'package:instagram_ui_app/Screens/InstaStories.dart';
//import 'package:instagram_ui_app/Screens/Instalist.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 // Color _iconColor = Colors.black ;
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(

        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 15,bottom: 10,top: 10),
                child: Column(
                  children: <Widget>[


                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Container(
                              width: 68,
                              height: 68,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: storyBorderColor ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.white,
                                            width: 2
                                        ),
                                      shape: BoxShape.circle,
                                      image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1525879000488-bff3b1c387cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),
                                          fit: BoxFit.cover)
                                  ),
                                ),
                              ),
                            ),
                          ),




                   // SizedBox(height: 1,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: SizedBox(width: 75,
                        child: Text('Your Story',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                          ),)
                        ,),
                    )
                  ],
                ),
              ),
               Row(
                  children: List.generate(stories.length, (index) {
                    return StoryItem(
                      img: stories[index]['img'],
                      name: stories[index]['name'],
                    );
                  })),

            ],),
          ),
          Divider(
            color: Colors.grey.withOpacity(0.3),
          ),
         Column(

            children: List.generate(posts.length, (index){
              return PostItem(

                postImg: posts[index]['postImg'],
                profileImg: posts[index]['profileImg'],
                name: posts[index]['name'],
                caption: posts[index]['caption'],
                isLoved: posts[index]['isLoved'],
                viewCount: posts[index]['commentCount'],
                likedBy: posts[index]['likedBy'],
                dayAgo: posts[index]['timeAgo'],
              );
            }),
          )
        ],
      ),
    );
  }
  List posts = [
    {
      "id": 1,
      "name": "shruthi",
      "profileImg":
      "assets/images/Inner Oval.png",
      "postImg":
      "assets/images/Rectangle.png",
      "caption": "A Fine day",
      "isLoved": true,
      "commentCount": "10",
      "likedBy": "hey_you",
      "timeAgo": "1 day ago"
    },
    {
      "id": 2,
      "name": "hey_you",
      "profileImg":
      "assets/images/Inner Oval.png",
      "postImg":
      "assets/images/Rectangle.png",
      "caption":
      "",
      "isLoved": true,
      "commentCount": "10",
      "likedBy": "sonitakhoun",
      "timeAgo": "1 day ago"
    },
    {
      "id": 3,
      "name": "allef_vinicius",
      "profileImg":
      "assets/images/Inner Oval.png",
      "postImg":
      "assets/images/Rectangle.png",
      "caption": " It is a good to day",
      "isLoved": false,
      "commentCount": "60",
      "likedBy": "sweetiepie",
      "timeAgo": "3 day ago"
    },
    {
      "id": 4,
      "name": "sweetiepie",
      "profileImg":
      "assets/images/Inner Oval.png",
      "postImg":
      "assets/images/Rectangle.png",
      "caption":
      "",
      "isLoved": false,
      "commentCount": "70",
      "likedBy": "sonitakhoun",
      "timeAgo": "3 day ago"
    }
  ];
}

String name = "charishma";


List stories = [
  {
    "id": 1,
    "img":
    "https://images.unsplash.com/photo-1503185912284-5271ff81b9a8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "sonitakhoun"
  },
  {
    "id": 2,
    "img":
    "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "name": "babysweetiepie"
  },
  {
    "id": 3,
    "img":
    "https://images.unsplash.com/photo-1545912452-8aea7e25a3d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "whereavygoes"
  },
  {
    "id": 4,
    "img":
    "https://images.unsplash.com/photo-1525879000488-bff3b1c387cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "collins_lesulie"
  },
  {
    "id": 5,
    "img":
    "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "name": "tyler_nix"
  }
];



class StoryItem extends StatelessWidget {
  final String img;
  final String name;
  const StoryItem({
    Key? key, required this.img, required this.name,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20,bottom: 10),
      child: Column(
        children: <Widget>[
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: storyBorderColor ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        width: 2
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(image:
                    NetworkImage(img,),fit: BoxFit.cover)
                ),
              ),
            ),
          ),
          SizedBox(height: 8,),
          SizedBox(
            width: 70,
            child:
            Text(name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.black,
              ),),
          )
        ],
      ),
    );
  }
}
const storyBorderColor = [
  Color(0xFF9B2282),
  Color(0xFFEEED7D)
];