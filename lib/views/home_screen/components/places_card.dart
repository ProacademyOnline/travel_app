import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({Key key, @required this.imgurl, @required this.txt})
      : super(key: key);

  final String imgurl;
  final String txt;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          alignment: Alignment.bottomCenter,
          width: screenwidth / 2.8,
          height: screenheight / 4,
          decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage(imgurl), fit: BoxFit.cover)),
          child: Container(
            margin: EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20)),
            width: screenwidth / 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                txt,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15, shadows: [
                  Shadow(
                      color: Colors.black,
                      blurRadius: 6.0,
                      offset: Offset(0, 5))
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
