// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:travel_app/utils/card.dart';
import 'package:travel_app/utils/category.dart';
import 'package:travel_app/utils/label.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.purple,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GNav(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          activeColor: Colors.orange,
          gap: 5,
          tabBackgroundColor: Colors.orange.withOpacity(0.3),
          iconSize: 30,
          tabs: [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
            ),
            GButton(
              icon: Icons.bookmark_outline,
              text: 'Bookmarks',
            ),
            GButton(
              icon: Icons.location_on_outlined,
              text: 'Locations',
            ),
            GButton(
              icon: Icons.settings_outlined,
              text: 'Setting',
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2017/10/18/21/36/portrait-2865605_960_720.jpg',
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Hi,',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Jenny!',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(60, 156, 152, 152),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      Icons.notifications_none_rounded,
                      size: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Where  do  you',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'want  to  ',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'go?',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 242, 242, 242),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    cursorColor: Colors.orange,
                    cursorHeight: 18,
                    textAlign: TextAlign.start,
                    cursorRadius: Radius.zero,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      suffixIcon: CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Category',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Category(
                      imgpath: 'lib/icons/mountain.jpg',
                      name: 'Mountain',
                    ),
                    Category(
                      imgpath: 'lib/icons/beach.jpg',
                      name: 'Beach',
                    ),
                    Category(
                      imgpath: 'lib/icons/city.jpg',
                      name: 'City',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Label(
                name: 'Recommandation',
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card1(
                      name: 'Mount Logan',
                      place: 'Canada',
                      imgpath: 'lib/icons/mountain2.jpg',
                    ),
                    Card1(
                      name: 'Mount Rocky',
                      place: 'Canada',
                      imgpath: 'lib/icons/mountain.jpg',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
