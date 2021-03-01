import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rental_ui/constants/terms_and_conditions_global_keys.dart';

class TermsAndConditionsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Terms and Conditions'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Text(
                          'Here are the terms and conditions . The personal information you have given'),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (checked) {
                        Navigator.pop(context, checked);
                      },
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.brown,
                            fontWeight: FontWeight.normal,
                          ),
                          text: 'I agree to the terms and conditions',
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
