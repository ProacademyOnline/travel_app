import 'package:flutter/material.dart';

class ActivityCard extends StatefulWidget {
  // String iconBlue;
  // String txt;
  // ActivityCard({this.iconBlue = 'assets/icons/kayak-blue.png',this.txt = "Kayaking"});
  const ActivityCard(
      {Key key,
      @required this.iconBlue,
      @required this.iconWhite,
      @required this.txt})
      : super(key: key);

  final String iconBlue;
  final String iconWhite;
  final String txt;

  @override
  _ActivityCardState createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        // if (isSelected) {
        //   setState(() {
        //     isSelected = false;
        //   });
        // } else {
        //   setState(() {
        //     isSelected = true;
        //   });
        // }

        print("isSelected is $isSelected");
      },
      child: Padding(
        padding:
            EdgeInsets.only(top: screenheight / 32, right: screenwidth / 25),
        child: Container(
          width: screenwidth / 3.5,
          height: screenheight / 5.35,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: isSelected ? Color(0XFF0172c0) : Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color(0XFF0172c0), width: 2)),
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.only(bottom: 8),
                  child: Image.asset(
                      isSelected ? widget.iconWhite : widget.iconBlue)),
              Text(
                widget.txt,
                style: TextStyle(
                    color: isSelected ? Colors.white : Color(0XFF0172c0),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
