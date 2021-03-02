
import 'package:flutter/material.dart';

class PayRentTab extends StatefulWidget {
  @override
  _PayRentTabState createState() => _PayRentTabState();
}

class _PayRentTabState extends State<PayRentTab> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _amountController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make Payment'),
        leading: CloseButton(),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                        onPressed: (){
                          //Future<void> afterLaunchSTK= _openSimToolKit('com.android.stk');
                        },
                    )
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
//Future<void> _openSimToolKit(String stkPackageName) async{
//  if (await canLaunch(stkPackageName)) {
//    final bool nativeAppLaunchSucceeded = await launch(
//      stkPackageName,
//      forceSafariVC: false,
//      universalLinksOnly: true,
//    );
//    if (!nativeAppLaunchSucceeded) {
//      await launch(
//        stkPackageName,
//        forceSafariVC: true,
//      );
//    }
//  }
//}
//Future<dynamic> makeSTKPush(
//    String tenantPhone, double amount, String monthOfTheYear) async {
//  dynamic transactionInitialisation;
//  try {
//    transactionInitialisation = await MpesaFlutterPlugin.initializeMpesaSTKPush(
//        businessShortCode: '174379',
//        transactionType: TransactionType.CustomerPayBillOnline,
//        amount: amount,
//        partyA: tenantPhone,
//        partyB: '174379',
//        callBackURL: Uri(),
//        //TODO handle backend and database
//        accountReference: monthOfTheYear,
//        phoneNumber: tenantPhone,
//        baseUri: Uri(scheme: 'https', host: 'sandbox.safaricom.co.ke'),
//        transactionDesc: 'mock stk push',
//        passKey:
//        'bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919');
//
//    //TODO transactionInitialisation is a HashMap. What to do with it?
//
//  } catch (e) {
//    //you can implement your exception handling here.
//    //Network unreachability is a sure exception.
//    print(e.getMessage());
//  }
//}
//void makeMpesaPayment() {
//  makeSTKPush('254701447794', 500.0, 'June Rent'); //dummy args passed
//}
