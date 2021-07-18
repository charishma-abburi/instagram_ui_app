import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const greycolor= Color(0xFFE0E0E0);


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // var deviceSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
        child: Column(

           children: <Widget>[
        Row(
          children: <Widget>[
        Padding(
        padding: const EdgeInsets.only(right: 20, left: 15,bottom: 10,top: 0),
               child: Column(
                  children: <Widget>[
                        Container(
                                  width: 93,
                                  height: 93,
                                    child: Stack(
                                         children: <Widget>[
                                           Container(
                                             width: 96,
                                             height: 96,
                                             decoration: BoxDecoration(
                                               shape: BoxShape.circle,
                                               color: Colors.grey[400],

                                             ),
                                             child: Padding(
                                               padding: const EdgeInsets.all(1.5),
                                               child: Container(
                                                    width: 93,
                                                height: 93,
                                   decoration: BoxDecoration(
                                       border: Border.all(
                                               color: Colors.white,
                                               width: 3,
                                       ),
                                      shape: BoxShape.circle,
                                        image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1525879000488-bff3b1c387cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),fit: BoxFit.cover)
          ),
        ),
                                             ),
                                           ),
               ],
        ),
      ),


            SizedBox(height: 8,),
            SizedBox(width: 100,
              child: Text("Kate D'Souza",
               // overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                 // fontSize: 20,
                ),)
              ,),
                    SizedBox(height: 0.25,),
                    SizedBox(width: 100,
                      child: Text("Rise N Shine✌(❁´◡`❁)",
                        // overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          // fontSize: 20,
                        ),)
                      ,),
            ],
        ),
            ),

             Padding(
               padding: const EdgeInsets.only(right: 10, left: 12,bottom: 15,top: 0),

               child: Column(
                 children: <Widget>[
                   Container(
                     width: 25,
                     height: 30,
                     child: Stack(
                       children: <Widget>[
                         Container(
                           width: 25,
                           height: 30,
                           child: Text('15',
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 20,
                             ),
                           ),
                         ),

                       ],
                     ),
                   ),
                   //SizedBox(height: 4,),
                   SizedBox(width: 40,
                     child: Text('Posts',
                     //  overflow: TextOverflow.ellipsis,
                       style: TextStyle(
                         color: Colors.black,
                       ),)
                     ,),
                   SizedBox(height: 65,),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(right: 10, left: 12,bottom: 15,top: 0),

               child: Column(
                 children: <Widget>[
                   Container(
                     width: 45,
                     height: 30,
                     child: Stack(
                       children: <Widget>[
                         Container(
                           width: 45,
                           height: 30,
                           child: Text('394',
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 20,
                             ),
                           ),
                         ),

                       ],
                     ),
                   ),
                   //SizedBox(height: 4,),
                   SizedBox(width: 70,
                     child: Text('Followers',
                       //  overflow: TextOverflow.ellipsis,
                       style: TextStyle(
                         color: Colors.black,
                       ),)
                     ,),
                   SizedBox(height: 65,),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(right: 10, left: 12,bottom: 15,top: 0),

               child: Column(
                 children: <Widget>[
                   Container(
                     width: 45,
                     height: 30,
                     child: Stack(
                       children: <Widget>[
                         Container(
                           width: 45,
                           height: 30,
                           child: Text('675',
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 20,
                             ),
                           ),
                         ),

                       ],
                     ),
                   ),
                   //SizedBox(height: 4,),
                   SizedBox(width: 70,
                     child: Text('Following',
                       //  overflow: TextOverflow.ellipsis,
                       style: TextStyle(
                         color: Colors.black,
                       ),)
                     ,),
                   SizedBox(height: 65,),
                 ],
               ),
             ),

           ],

    ),
          Container(
            child: SizedBox(
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.white,
                  minimumSize: Size(362, 35),

                  //  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                   side: BorderSide(color: greycolor,width: 1.0,),
                  ),
                ),
                onPressed: () {},
                child: Text('Edit Profile',
                  style: TextStyle(
                    color: Colors.black,
                  //  fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),

          Column(
            children: <Widget>[

                   SizedBox(
                     height: 437,
                     child: GridView.count(
                        mainAxisSpacing: 1.5,
                        crossAxisSpacing: 1.5,
                        children: <Widget>[
                          Container(
                            height: 400,
                            width: 200,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(image: AssetImage('assets/images/post 1.jpg'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 400,
                            width: 200,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(image: AssetImage('assets/images/post 3.jpg'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 400,
                            width: 200,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(image: AssetImage('assets/images/post 4.jpg'),fit: BoxFit.fill)
                            ),
                          ),

                          Container(
                            height: 400,
                            width: 200,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(image: AssetImage('assets/images/post 5.jpg'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 400,
                            width: 200,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(image: AssetImage('assets/images/post 6.jpg'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 400,
                            width: 200,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(image:NetworkImage('https://images.unsplash.com/photo-1525879000488-bff3b1c387cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60') ,
                                    fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 400,
                            width: 200,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(image: AssetImage('assets/images/post 7.jpg'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 400,
                            width: 200,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(image: AssetImage('assets/images/post 9.jpg'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 400,
                            width: 200,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(image: AssetImage('assets/images/Rectangle.png'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 400,
                            width: 200,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(image: AssetImage('assets/images/post 8.jpg'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 400,
                            width: 200,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(image: AssetImage('assets/images/post 10.jpg'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 400,
                            width: 200,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(image: AssetImage('assets/images/post 1.jpg'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 400,
                            width: 200,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(image: AssetImage('assets/images/post 4.jpg'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 400,
                            width: 200,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(image: AssetImage('assets/images/Rectangle.png'),fit: BoxFit.fill)
                            ),
                          ),
                          Container(
                            height: 400,
                            width: 200,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(image: AssetImage('assets/images/post 6.jpg'),fit: BoxFit.fill)
                            ),
                          ),

                        ],
                        crossAxisCount: 3,

                      ),
                   ),


              ],


          ),
        ],
        ),
    );
  }
}
