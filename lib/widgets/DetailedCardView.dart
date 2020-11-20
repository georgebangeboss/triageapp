import 'package:flutter/material.dart';
import 'package:rental_ui/podo_classes/payment.dart';

class DetailedCardView extends StatelessWidget {
  final Payment currentPayment;

  DetailedCardView(this.currentPayment);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
      child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  color: Colors.lightGreen,
                  padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
                  child: Text(
                    currentPayment.dateOfTransaction,
                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  color: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
                  child: Text(
                    currentPayment.briefDescription,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  color: Colors.brown[100],
                  padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
                  child: Text(
                    'Balance as at ${currentPayment.dateOfTransaction}: ${currentPayment.outstandingBalance}',
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
