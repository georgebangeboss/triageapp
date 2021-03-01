import 'package:flutter/material.dart';

class NewHomePageAppBar extends StatelessWidget implements PreferredSizeWidget{
  final double height;
  final Color gradientBegin,gradientEnd;

  NewHomePageAppBar({this.height,this.gradientBegin,this.gradientEnd});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            gradientBegin,
            gradientEnd,
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);

}