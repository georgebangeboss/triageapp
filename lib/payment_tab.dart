import 'package:flutter/material.dart';
import 'package:rental_ui/podo_classes/payment.dart';
import 'package:rental_ui/widgets/PaymentItemView.dart';

class PaymentTab extends StatefulWidget {
  final List<Payment> paymentsList;

  @override
  _PaymentTabState createState() => _PaymentTabState();

  PaymentTab({@required this.paymentsList});
}

class _PaymentTabState extends State<PaymentTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.arrow_back_rounded),
        backgroundColor: Colors.blue[800],
        title: Text(
          'ALL PAYMENTS TAB',
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            final _currentPaymentItem = widget.paymentsList[index];
            return PaymentItemView(_currentPaymentItem);
          },
          itemCount: widget.paymentsList.length,
        ),
      ),
    );
  }
}
