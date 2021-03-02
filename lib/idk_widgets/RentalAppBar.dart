import 'package:flutter/material.dart';

class SarrinAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          blurRadius: 0.5,
          color: Colors.black
        )]
      ),
    );
  }
}
