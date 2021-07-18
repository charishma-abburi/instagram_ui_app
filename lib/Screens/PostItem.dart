import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:line_icons/line_icons.dart';

const appBarColor = Color(0xFF131313);
const appFooterColor = Color(0xFF131313);
const primary = Color(0xFF000000);
const white = Color(0xFF131313);
const black = Color(0xFF000000);
const textFieldBackground = Color(0xFF262626);
const buttonFollowColor = Color(0xFF0494F5);
const storyBorderColor = [
  Color(0xFF9B2282),
  Color(0xFFEEA863)
];

class PostItem extends StatelessWidget {
  final String profileImg;
  final String name;
  final String postImg;
  final String caption;
  final isLoved;
  final String likedBy;
  final String viewCount;
  final String dayAgo;
  const PostItem({
    Key? key, required this.profileImg, required this.name, required this.postImg, this.isLoved, required this.likedBy, required this.viewCount, required this.dayAgo, required this.caption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[

                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image:AssetImage(profileImg),fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(width: 15,),
                  Text(name,style: TextStyle(
                      color: white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                  ),)
                ],),
              //h  Icon(LineIcons.ellipsis_h,color: white,)
              ],
            ),
          ),
          SizedBox(height: 12,),
          Container(
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(postImg),fit: BoxFit.cover)
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    isLoved ? IconButton(onPressed:(){}, icon: Icon(Icons.favorite,color: Colors.red,)) : IconButton(onPressed:(){}, icon: Icon(Icons.favorite_outline_rounded),),
                    SizedBox(width: 20,),
                    IconButton(onPressed:(){}, icon: Icon(Icons.comment)),
                    SizedBox(width: 20,),
                    IconButton(onPressed:(){}, icon: Icon(Icons.message)),
                  ],
                ),
                IconButton(onPressed:(){}, icon: Icon(Icons.save_alt)),
              ],
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: RichText(text: TextSpan(
                children: [
                  TextSpan(
                      text: "Liked by ",
                      style: TextStyle(
                        color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      )
                  ),
                  TextSpan(
                      text: "$likedBy ",
                      style: TextStyle(
                        color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700
                      )
                  ),
                  TextSpan(
                      text: "and ",
                      style: TextStyle(
                        color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      )
                  ),
                  TextSpan(
                      text: "Other",
                      style: TextStyle(
                        color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700
                      )
                  ),

                ]
            )),
          ),
          SizedBox(height: 12,),
          Padding(padding: EdgeInsets.only(left: 15,right: 15),
              child: RichText(text: TextSpan(
                  children: [
                    TextSpan(
                        text: "$name ",
                        style: TextStyle(
                          color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700
                        )
                    ),
                    TextSpan(
                        text: "$caption",
                        style: TextStyle(
                          color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        )
                    ),

                  ]
              ))),
          SizedBox(height: 12,),
          Padding(padding: EdgeInsets.only(left: 15,right: 15),
            child: Text("View $viewCount comments",style: TextStyle(
                color: black.withOpacity(0.5),
                fontSize: 15,
                fontWeight: FontWeight.w500
            ),),
          ),
          SizedBox(height: 12,),
          Padding(padding: EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: NetworkImage(profileImg),fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 15,),
                      Text("Add a comment...",style: TextStyle(
                          color: black.withOpacity(0.5),
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("😂",style: TextStyle(
                          fontSize:
                          20
                      ),),
                      SizedBox(width: 10,),
                      Text("😍",style: TextStyle(
                          fontSize:
                          20
                      ),),
                      SizedBox(width: 10,),
                      Icon(Icons.add_circle,color: white.withOpacity(0.5),size: 18,)
                    ],
                  )
                ],
              )
          ),
          SizedBox(height: 12,),
          Padding(padding: EdgeInsets.only(left: 15,right: 15),
            child:  Text("$dayAgo",style: TextStyle(
                color: black.withOpacity(0.5),
                fontSize: 15,
                fontWeight: FontWeight.w500
            ),),
          )
        ],
      ),
    );
  }
}