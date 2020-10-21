import 'package:flutter/material.dart';

class CardSummary extends StatelessWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w700);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Card(
          elevation: 8,
          color: Colors.grey,
          child: Container(
            height: 150,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color(0xffD7E7F0).withOpacity(1),
                  Color(0xff07A6EB).withOpacity(0.6)
                ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Rent',
                  style: optionStyle.copyWith(fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Paid: 35,000',
                      style: optionStyle,
                    ),
                    Text(
                      'Remaining: 5,000',
                      style: optionStyle,
                    )
                  ],
                ),
                CircularProgressIndicator(
                  strokeWidth: 10,
                  value: 0.8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
