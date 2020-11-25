import 'package:flutter/material.dart';

class PaymentTab extends StatefulWidget {
  @override
  _PaymentTabState createState() => _PaymentTabState();
}

class _PaymentTabState extends State<PaymentTab> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _amountController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make Payment'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Form(
              key: _formKey,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Phone No.',
                          prefix: Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Text('+254')),
                          prefixStyle: TextStyle(fontWeight: FontWeight.bold)),
                      controller: _phoneController,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: 'Amount.',
                      ),
                      controller: _amountController,
                    ),
                    MaterialButton(
                        color: Colors.blue,
                        elevation: 1,
                        child: Text('Make Payment'),
                        onPressed: () {})
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
