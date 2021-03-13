import 'package:flutter/material.dart';
import 'package:rental_ui/config/Palette.dart';
import 'package:rental_ui/constants/text_styles.dart';
import 'package:rental_ui/models/payment.dart' as lib2;
import 'package:rental_ui/moor/moor_db.dart';


class DetailedSingleTransactionCardView extends StatelessWidget {
  final Payment currentPayment;

  DetailedSingleTransactionCardView(this.currentPayment);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 80,
      margin: EdgeInsets.symmetric(vertical: 0.25, horizontal: 0.5),
      child: Card(
        color: Palette.paymentCardColor,
        shadowColor: Colors.yellow[400],
        elevation: 2.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 2.0, 20.0, 2.0),
                    child: Text(
                      '${currentPayment.dateAndTime}',
                      style: paymentCardStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2.0,
                        color: Colors.brown[900],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 0.0, top: 2.0, bottom: 2.0),
                    child: Text(
                      '${currentPayment.dateAndTime}',
                      style: paymentCardStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2.0,
                        color: Colors.brown[800],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'PAID     : ',
                    style: paymentCardStyle.copyWith(
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2.0,
                      color: Color(0xff799936),
                    ),
                  ),
                  Text(
                    'Kshs ${currentPayment.amountPaid.toStringAsFixed(2)}',
                    style: paymentCardStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2.0,
                      color: Colors.brown[300],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'REMAIN : ',
                    style: paymentCardStyle.copyWith(
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2.0,
                      color: Color(0xff799936),
                    ),
                  ),
                  Text(
                    'Kshs ${currentPayment.amountDue.toStringAsFixed(2)}',
                    style: paymentCardStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2.0,
                      color: Colors.brown[300],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
