import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rental_ui/config/Palette.dart';
import 'package:rental_ui/constants/text_styles.dart';
import 'package:rental_ui/models/tenant.dart';
import 'package:rental_ui/tabs/home_page_tab/widgets/my_drawer.dart';

class NewHomePage extends StatefulWidget {
  final Tenant tenant;

  @override
  _NewHomePageState createState() => _NewHomePageState();

  NewHomePage(this.tenant);
}

class _NewHomePageState extends State<NewHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: MyDrawer(widget.tenant),
      ),
      appBar: AppBar(
        title: Text(widget.tenant.firstName),
        actions: [
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {
              //Future<void> afterCall =_makePhoneCallToLandLord('tel:+254769123105');
            },
            tooltip: 'Call the landlord',
          ),
          IconButton(
            icon: Icon(Icons.message_outlined),
            onPressed: () {
              //_textTheLandLord('sms:+254769123105');
            },
            tooltip: 'Text the landlord',
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(bottom: 20.0),
              sliver: Consumer<Tenant>(
                builder: (context, tenant, aChild) {
                  return SliverToBoxAdapter(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Palette.primaryBackground,
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  'Rent Due:',
                                  style: generalFont.copyWith(
                                    fontSize: 15,
                                    color: Colors.brown[100],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  'Kshs ${tenant.rentBalance.toStringAsFixed(2)}',
                                  style: generalFont.copyWith(
                                    fontSize: 15,
                                    color: Colors.brown[100],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.calendar_today_outlined,
                                  color: Colors.brown[100],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Text(
                                  '5th',
                                  style: generalFont.copyWith(
                                    fontSize: 15,
                                    color: Colors.brown[100],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(bottom: 10.0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        'View Arrears',
                        style: generalFont.copyWith(
                          fontSize: 15,
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(bottom: 10.0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        'Make Complaint',
                        style: generalFont.copyWith(
                          fontSize: 15,
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(bottom: 10.0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        'Find New House',
                        style: generalFont.copyWith(
                          fontSize: 15,
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(bottom: 10.0),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        'Goods and Services',
                        style: generalFont.copyWith(
                          fontSize: 15,
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Future<void> _makePhoneCallToLandLord(String tel) async {
//  if (await canLaunch(tel)) {
//    await launch(tel);
//  } else {
//    throw 'Could not launch call to $tel';
//  }
//}

//Future<void> _textTheLandLord(String tel) async {
//  if (await canLaunch(tel)) {
//    await launch(tel);
//  } else {
//    throw 'Could not launch sms to $tel';
//  }
//}
