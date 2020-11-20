import 'package:flutter/material.dart';
import 'package:rental_ui/podo_classes/payment.dart';

class BriefCardView extends StatelessWidget {
  final Payment currentPayment;
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
                  padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
                  color: Colors.lightGreen,
                  child: Text(
                    currentPayment.dateOfTransaction,
                  ),
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
                  color: Colors.green,
                  child: Text(
                    currentPayment.briefDescription,
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }

  BriefCardView(this.currentPayment);
}
