import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DashboardCard extends StatefulWidget {
  final String title;
  final double paidAmount, balance;
  final Color progressBarColor;
  final Color cardColor;

  const DashboardCard(
      {Key key,
        this.title,
        this.paidAmount,
        this.balance,
        this.progressBarColor,
        this.cardColor})
      : super(key: key);

  @override
  _DashboardCardState createState() => _DashboardCardState();
}

class _DashboardCardState extends State<DashboardCard> {
  @override
  Widget build(BuildContext context) {
    double _progress = this.widget.paidAmount / (this.widget.balance + this.widget.paidAmount);
    print(_progress);
    return Card(
      elevation: 0,
      color: widget.cardColor,
      margin: EdgeInsets.only(left: 5, right: 5, top: 15),
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 90.0,
              lineWidth: 8.0,
              animation: true,
              percent: _progress,
              center: new Text(
                "${(_progress * 100).toInt()}%",
                style:
                new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: this.widget.progressBarColor,
            ),
            Container(
                margin: EdgeInsets.only(left: 6),
                child: Text(
                  widget.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ))
            // SizedBox(
            //   height: 100,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         this.title,
            //         style: TextStyle(
            //             fontFamily: 'PTSans',
            //             fontSize: 20,
            //             color: Colors.black87,
            //             fontWeight: FontWeight.bold),
            //       ),
            //       Text('Kshs. ${this.paidAmount} Paid', softWrap: true,),
            //       Text('Balance: Kshs. ${this.balance}', softWrap: true,)
            //     ],
            //   ),
            // ),
          ]),
    );
  }
}
