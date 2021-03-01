import 'package:flutter/material.dart';
import 'package:rental_ui/config/Palette.dart';

class ErrorPane extends StatelessWidget {
  final _errorText;

  ErrorPane(this._errorText);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.primaryBackground,
      ),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.error,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.8,
            padding: const EdgeInsets.all(1.0),
            child: Text(
              '${this._errorText}',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
