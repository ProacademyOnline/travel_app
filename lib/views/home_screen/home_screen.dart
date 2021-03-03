import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:travel_app/views/home_screen/components/activity_card.dart';
import 'package:travel_app/views/home_screen/components/places_card.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: Stack(
              children: [
                Container(
                  width: screenwidth,
                  height: screenheight / 2.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5),
                              BlendMode.softLight),
                          image: AssetImage('assets/images/homebg3.jpg'),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  top: 22,
                  child: Container(
                    width: screenwidth,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 40,
                          ),
                          Icon(
                            Icons.more_vert_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: screenheight * 0.35),
                  padding: EdgeInsets.only(
                      top: screenheight / 35, left: screenwidth / 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Activities you love",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      ActivitySection(),
                      SizedBox(height: screenheight / 30),
                      Text(
                        "Recommended Places",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: screenheight / 35),
                      PlacesSection(),
                      SizedBox(height: screenheight / 30),
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Create new place",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  Text(
                                    "Create camping with your friends",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.add_circle,
                                color: Color(0XFF0172c0),
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: screenheight / 30),
                    ],
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class ActivitySection extends StatelessWidget {
  const ActivitySection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ActivityCard(
            iconBlue: 'assets/icons/kayak-blue.png',
            iconWhite: 'assets/icons/kayak-white.png',
            txt: "Kayaking",
          ),
          ActivityCard(
            iconBlue: 'assets/icons/hiking-blue.png',
            iconWhite: 'assets/icons/hiking-white.png',
            txt: "Hiking",
          ),
          ActivityCard(
            iconBlue: 'assets/icons/fishing-blue.png',
            iconWhite: 'assets/icons/fishing-white.png',
            txt: "Fishing",
          ),
          ActivityCard(
            iconBlue: 'assets/icons/boat-blue.png',
            iconWhite: 'assets/icons/boat-white.png',
            txt: "Boating",
          ),
        ],
      ),
    );
  }
}

class PlacesSection extends StatelessWidget {
  const PlacesSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PlaceCard(
            imgurl: 'assets/images/place1.png',
            txt: "Lichnoes camp Greece",
          ),
          PlaceCard(
            imgurl: 'assets/images/place2.png',
            txt: "Bays oF Australia",
          ),
          PlaceCard(
            imgurl: 'assets/images/place3.png',
            txt: "Cape Range National Park",
          )
        ],
      ),
    );
  }
}
