
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rental_ui/constants/text_styles.dart';

class HomeCard extends StatefulWidget {
  @override
  _HomeCardState createState() => _HomeCardState();
  final String tileName;
  HomeCard({this.tileName});
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.only(left: 5, right: 5, top: 15),
      color: Colors.white,
      shadowColor: Colors.green[500],
      child:
      Row(
        mainAxisSize:MainAxisSize.max ,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //TODO add an icon
          Expanded(
            child: Text(
              '${widget.tileName}',
              style: optionStyle.copyWith(
                color: Colors.brown[300].withOpacity(1),
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}

