import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'announcements.dart';
import 'package:bitwardha/CustomImageSlider.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:bitwardha/Attendance.dart';
import 'databse.dart';



class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          bottomNavigationBar: ConvexAppBar(
            items: [
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.map, title: 'Discovery'),
              TabItem(icon: Icons.add, title: 'Add'),
              TabItem(icon: Icons.message, title: 'Message'),
              TabItem(icon: Icons.people, title: 'Profile'),
            ],
            initialActiveIndex: 2,//optional, default as 0
            onTap: (int i) => print('click index=$i'),
          ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              MaterialButton(
                onPressed: (){
                  print("SDN");
                },
                child: Text("Att"),
              )

            ],
          ),
        ),
          appBar: AppBar(
            title: Text("BIT WARDHA"),
            backgroundColor: Colors.black,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlayAnimationDuration: Duration(seconds: 2),
                    autoPlayInterval: Duration(seconds: 4),
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                  items: imageSliders,
                ),
                Center(child: Text("Announcements !",style: TextStyle(fontWeight: FontWeight.bold
                    ,fontSize:29 ),)),
                SizedBox(height: 19,),
                newslist(),
              ],
            ),
          )),
    );
  }
}
