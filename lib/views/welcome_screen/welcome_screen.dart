import 'package:flutter/material.dart';
import 'package:travel_app/views/home_screen/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenwidth,
        height: screenheight,
        decoration: BoxDecoration(
            // color: Colors.amber,
            image: DecorationImage(
                colorFilter:
                    ColorFilter.mode(Colors.black, BlendMode.softLight),
                image: AssetImage('assets/images/bg5.jpg'),
                fit: BoxFit.fitHeight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "The Travelling App",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: screenheight / 50),
            Padding(
              padding: EdgeInsets.only(bottom: screenheight / 20),
              child: Text(
                "Connect with people and plan your next escape to explore this beautiful world !",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            // SizedBox(height: screenheight * 0.05),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                width: screenwidth * 0.5,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0XFF0172c0).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(60),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0XFF0172c0).withOpacity(0.4),
                          blurRadius: 20,
                          offset: Offset(0, 8))
                    ]),
                child: Text(
                  "Lets Go",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenheight * 0.05),
          ],
        ),
      ),
    );
  }
}
