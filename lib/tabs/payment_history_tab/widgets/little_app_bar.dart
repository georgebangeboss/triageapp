import 'package:flutter/material.dart';

class LittleAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Container(child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Ledger Payments',
        ),

      ),),
    );
  }
}
