import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_ui/moor/moor_db.dart';
import 'package:rental_ui/tabs/payment_history_tab/widgets/detailed_single_transaction_card_view.dart';
import 'package:rental_ui/tabs/payment_history_tab/widgets/expanded_app_bar.dart';
import 'package:rental_ui/tabs/payment_history_tab/widgets/little_app_bar.dart';

class Ledger extends StatefulWidget {

  @override
  _LedgerState createState() => _LedgerState();

  Ledger();
}

class _LedgerState extends State<Ledger> {

  ScrollController scrollController;

  @override
  void initState() {
    scrollController=ScrollController();
    super.initState();
  }
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                  title: LittleAppBar(),
                  pinned: true,
                  floating: true,
                  expandedHeight: 150,
                  flexibleSpace: FlexibleSpaceBar(
                    background: ExpandedAppBar(),
                  )),
              StreamBuilder(
                stream: Provider.of<PaymentDao>(context).paymentsGenerated().watch(),
                builder: (context,AsyncSnapshot<List<Payment>> snapshot){
                  final allPayments =snapshot.data??<Payment>[];
                  return SliverFixedExtentList(
                    itemExtent: 80.0,
                    delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                        return _buildSingleTransactionTile(
                            allPayments[index]);
                      },
                      childCount: allPayments.length,
                    ),
                  );
                },
              ),
            ],
          ),
        );
  }
}

Widget _buildSingleTransactionTile(Payment payment) {
  return DetailedSingleTransactionCardView(payment);
}
