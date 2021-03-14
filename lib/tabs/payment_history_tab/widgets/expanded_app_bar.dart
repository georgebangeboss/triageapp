import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedAppBar extends StatefulWidget {

  @override
  _ExpandedAppBarState createState() => _ExpandedAppBarState();

  ExpandedAppBar();
}

class _ExpandedAppBarState extends State<ExpandedAppBar> {
  @override
  Widget build(BuildContext context) {
        return Container(
          padding: EdgeInsets.only(top: 80, left: 5, right: 5),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Rent Due:',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green[200],
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Kshs TODO',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green[200],
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
  }
}
