import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rental_ui/widgets/ChatItemWidget.dart';
import 'package:rental_ui/widgets/InputWidget.dart';
import 'package:rental_ui/widgets/ProgressSummary.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:rental_ui/widgets/UserProfile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sarrin Rental',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _borderRadius = 15.0;
  final Color _iconColor = Color(0xff457B9D);
  static const TextStyle optionStyle = TextStyle(
      fontFamily: 'PTSans',
      fontSize: 32,
      fontStyle: FontStyle.normal,
      color: Colors.black,
      fontWeight: FontWeight.w400);
  void _navigate(value) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _selectedIndex = value;
      print('Counter is: $_selectedIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            HomePage(optionStyle: optionStyle),
            ChatItemWidget(1),
            Column(
              children: [
                Flexible(
                    flex: 9,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ChatItemWidget(2),
                    )),
                Flexible(flex: 1, child: InputWidget())
              ],
            ),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(color: Colors.black),
          selectedIconTheme: IconThemeData(
            color: Colors.white
          ),
          unselectedIconTheme: IconThemeData(
            color: Color(0xffA8DADC)
          ),

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Color(0xff1976d2),
                ),
            BottomNavigationBarItem(
                icon: Icon(Icons.receipt),
                label:'Reports',
              backgroundColor: Colors.green
                ),
            BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'Feedback',
                ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                )
          ],
          elevation: 20,
          //selectedItemColor: Colors.blue,
          currentIndex: _selectedIndex,
          onTap: (value) => {_navigate(value)},
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
    @required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
      mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RichText(
            text: TextSpan(style: optionStyle, children: [
              TextSpan(
                  text: 'Isaac Kinuthia',
                  style: optionStyle.copyWith(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold)),
            ]),
          ),
          Text('House 12', style: optionStyle,),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DashboardCard(title: 'Rent', paidAmount: 15000, balance: 5000, progressBarColor: Color(0xffFF9800),),
                DashboardCard(title: 'Garbage', paidAmount: 500, balance: 500, progressBarColor: Color(0xff4caf50), cardColor: Colors.orange,),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              verticalDirection: VerticalDirection.down,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DashboardCard(title: 'Water', paidAmount: 15000, balance: 5000, progressBarColor: Color(0xff2196f3),cardColor: Colors.white,),
                DashboardCard(title: 'Electricity', paidAmount: 500, balance: 500, progressBarColor: Colors.red, cardColor:  Color(0xff2196f3),),
              ],
            ),
          ),
          //DashboardCard(title: 'Utilities', paidAmount: 500, balance: 500, progressBarColor: Colors.green,),
          //CardSummary(),
          //CardSummary(),
          Align(
            alignment: Alignment.bottomCenter,
            child: FlatButton(
              color: Color(0xff2196f3),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Make Payment', style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                ),),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              onPressed: () {
                print('pressed');
                //TODO initiate Mpesa STK push
              },
            ),
          )
        ],
      );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final double paidAmount, balance;
  final Color progressBarColor;
  final Color cardColor;
  const DashboardCard({
    Key key, this.title, this.paidAmount, this.balance, this.progressBarColor, this.cardColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _progress = this.paidAmount/(this.balance+this.paidAmount);
    print(_progress);
    return Card(
      elevation: 10,
      color: cardColor,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 185,
        padding: const EdgeInsets.all(8.0),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularPercentIndicator(
                radius: 90.0,
                lineWidth: 8.0,
                animation: true,
                percent: _progress,
                center: new Text(
                  "${(_progress*100).toInt()}%",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: this.progressBarColor,
              ),
              Container(margin: EdgeInsets.only(left: 6),child: Text(title,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14
              ),))
              // SizedBox(
              //   height: 100,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         this.title,
              //         style: TextStyle(
              //             fontFamily: 'PTSans',
              //             fontSize: 20,
              //             color: Colors.black87,
              //             fontWeight: FontWeight.bold),
              //       ),
              //       Text('Kshs. ${this.paidAmount} Paid', softWrap: true,),
              //       Text('Balance: Kshs. ${this.balance}', softWrap: true,)
              //     ],
              //   ),
              // ),

            ]),
      ),
    );
  }
}
