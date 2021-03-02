import 'package:flutter/material.dart';
import 'package:rental_ui/tabs/home_page_tab/widgets/DashboardCard.dart';
import 'package:rental_ui/tabs/pay_rent_tab/PayRentTab.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      RichText(
        text: TextSpan(style: widget.optionStyle, children: [
          TextSpan(
              text: 'Isaac Kinuthia',
              style: widget.optionStyle.copyWith(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold)),
        ]),
      ),
      Text(
        'House 12',
        style: widget.optionStyle,
      ),
      DashboardCard(
        title: 'Rent',
        paidAmount: 15000,
        balance: 5000,
        progressBarColor: Color(0xffFF9800),
      ),
      DashboardCard(
        title: 'Garbage',
        paidAmount: 500,
        balance: 500,
        progressBarColor: Color(0xff4caf50),
        cardColor: Colors.orange,
      ),

      DashboardCard(
        title: 'Water',
        paidAmount: 15000,
        balance: 5000,
        progressBarColor: Color(0xff2196f3),
        cardColor: Colors.white,
      ),
      DashboardCard(
        title: 'Electricity',
        paidAmount: 500,
        balance: 500,
        progressBarColor: Colors.red,
        cardColor: Color(0xff2196f3),
      ),
    ]);
  }


}