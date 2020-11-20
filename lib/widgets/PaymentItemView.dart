import 'package:flutter/material.dart';
import 'package:rental_ui/podo_classes/payment.dart';

import 'BriefCardView.dart';
import 'DetailedCardView.dart';

class PaymentItemView extends StatefulWidget {
  final Payment currentPayment;
  PaymentItemView(this.currentPayment);

  @override
  _PaymentItemViewState createState() => _PaymentItemViewState();
}

class _PaymentItemViewState extends State<PaymentItemView> {
  bool isShowAllDetails=false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.blue,
      onTap: toggleCardViews,
      child:drawInkwellChild(isShowAllDetails),
    );
  }
  Widget drawInkwellChild(bool isShowDetails){
    return (isShowDetails)?DetailedCardView(widget.currentPayment):BriefCardView(widget.currentPayment);
  }
  void toggleCardViews(){
    setState(() {
      isShowAllDetails=!isShowAllDetails;
    });
  }
}
