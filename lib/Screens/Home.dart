import 'package:flutter/material.dart';
import 'package:instagram_ui_app/Screens/AddPage.dart';
import 'package:instagram_ui_app/Screens/DmPage.dart';
import 'package:instagram_ui_app/Screens/FavoritePage.dart';
import 'package:instagram_ui_app/Screens/HomePage.dart';
import 'package:instagram_ui_app/Screens/ProfilePage.dart';
import 'package:instagram_ui_app/Screens/SearchPage.dart';

const greycolor= Color(0xFFE0E0E0);

class Home extends StatefulWidget{
  Home({Key? key}) : super(key: key);
 @override
 _HomeState createState() => _HomeState();

}
class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  PageController _pageController = PageController();
  List<Widget> _screens =[
    HomePage(),SearchPage(),AddPage(),FavoritePage(),ProfilePage()
  ];
  void _onpageChanged (int index){
    setState(() {
      _selectedIndex=index ;
    });

  }
  void _itemTapped(int selectedIndex){
   _pageController.jumpToPage(selectedIndex);

  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(),
       body: PageView(
         controller: _pageController,
         children: _screens,
     onPageChanged: _onpageChanged ,
         physics: NeverScrollableScrollPhysics(),
       ),
      bottomNavigationBar: BottomNavigationBar(
            onTap: _itemTapped,
        items: [

          BottomNavigationBarItem(
              icon: _selectedIndex ==0 ?  Icon(Icons.home,color: Colors.black,size: 30,): Icon(Icons.home_outlined,color: Colors.black,size: 30,),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex ==1 ?
            Tab(icon:   Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                //  border: Border.all(
                //    color: Colors.white,
                //    width: 2,
                //  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/images/Search.png'),fit: BoxFit.cover)
              ),
            ),
            )
            :
            Tab(icon:   Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                //  border: Border.all(
                //    color: Colors.white,
                //    width: 2,
                //  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('assets/images/Search_outlined.png'),fit: BoxFit.fitWidth)
              ),
            ),
            ) ,

            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex ==2 ?  Icon(Icons.add_box,color: Colors.black,size: 30,): Icon(Icons.add_box_outlined,color: Colors.black,size: 30,),
            label: 'addbox',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex ==3 ?  Icon(Icons.favorite,color: Colors.black,size: 30,): Icon(Icons.favorite_outline_rounded,color: Colors.black,size: 30,),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
              icon: _selectedIndex ==4 ?
              Tab(icon:   Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,

                ),
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: Container(
                    width: 33,
                    height: 33,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        shape: BoxShape.circle,
                        image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1525879000488-bff3b1c387cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),fit: BoxFit.cover)
                    ),
                  ),
                ),
              ),

              )
                  :  Tab(icon:   Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      //  border: Border.all(
                      //    color: Colors.white,
                      //    width: 2,
                      //  ),
                        shape: BoxShape.circle,
                        image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1525879000488-bff3b1c387cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'),fit: BoxFit.cover)
                    ),
                  ),



              ) ,
              label: 'profile'
          ),

        ],
        showUnselectedLabels: false,
        showSelectedLabels: false,
      ),

  );
  }
   getAppbar() {
    if(_selectedIndex == 0){
     return AppBar(
       backgroundColor: Colors.grey[50],
       elevation: 0.0,
       automaticallyImplyLeading: false,
       title: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
           Icon(Icons.camera_alt_outlined,
             color: Colors.black,),
           Image.asset('assets/images/Instagram Logo.png',
             width: 140,
             //height: 20,
           ),
           IconButton(onPressed: (){
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => DmPage()),
             );
           }, icon: Icon(Icons.send_outlined),
             color: Colors.black,),

         ],
       ),

     );
    }

    else if(_selectedIndex==1){
      return AppBar(
          backgroundColor: Colors.grey[50],
          elevation: 0.0,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 320,
                height: 40,
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
              Container(
                height: 23,
                width: 23,
                child: Image.asset('assets/images/Shape.png'),
              ),
            ],
          ),

      );
    }
    else if(_selectedIndex==2){
      return AppBar(
       automaticallyImplyLeading: false,
        backgroundColor: Colors.grey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Reels'),
            Icon(Icons.camera_alt_outlined ),
          ],
        ),
      );
    }
    else if(_selectedIndex==3){
      return AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text("Activity",
          style: TextStyle(color: Colors.black,
          letterSpacing: 0.5,
          fontSize: 25,
          fontWeight: FontWeight.bold),
        ),
      );
    }
    else if(_selectedIndex==4){
      return AppBar(
        backgroundColor: Colors.grey[50],
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Center(
          child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Icon(Icons.lock,
                    color: Colors.black,
                    size: 20,
                  ),
                  Text(' kate_52',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down,
                    color: Colors.black,
                  ),

                ],
              ),
        ),
         centerTitle : true,

      );
    }

  }

}

