import 'package:flutter/material.dart';
import 'package:rental_ui/constants/text_styles.dart';

class QuickHelpBar extends StatelessWidget {
  final String helpName;
  QuickHelpBar(this.helpName);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width:double.infinity,
      margin: EdgeInsets.only(top: 15.0,left: 15.0,right: 15.0),
      child: OutlinedButton(
        style:OutlinedButton.styleFrom(
          textStyle: optionStyle.copyWith(),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: (){},
        child: Center(
          child: Text(
            '$helpName',
          ),
        ),
      ),
    );
  }
}
