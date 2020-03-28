import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:flutterpublicapp/listView.dart';
import 'package:flutterpublicapp/listViewClick.dart';
import 'package:google_fonts/google_fonts.dart';

// runApp() is a builtin method that initializes the app layout
// MyApp() (see below) is a widget that will be the root of our application.
void main() => runApp(MyApp());

double _value_SIP;
dynamic _value_lipsum;
String per;
double per1;
bool creditscore_bool;
bool pan_available;

bool linked_lenghth;
bool unlinked_lenghth;

dynamic calculationGoalAmount=500000;
dynamic calculationPvif=0;
dynamic calculationE11=0;
dynamic calculationE12=0;
dynamic calculationPMT=0;
dynamic calculationNPer=0;
dynamic calculationRate=0;
dynamic calculationOtherValue=0;
dynamic calculationGoalYear=5;
dynamic calculationGoalRate=12;
FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: 12345678.9012345);

MoneyFormatterOutput fo = fmf.output;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      ),
     // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/simpleList': (context) => ListExample(),
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  void initState() {
    super.initState();



    creditscore_bool = true;
    pan_available = false;


    _value_SIP = 0;
    _value_lipsum = 0;


    per = "";
    per1 = 0.0;

    linked_lenghth = false;
    unlinked_lenghth = false;


    per = "";
    per1 = 0.0;

    /*  getdetails();

    getgoals();*/
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
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

        crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[

          new Container(
            padding:
            EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
            decoration: BoxDecoration(
                color: Color(0XFFFAFAFA),
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                    color: Color(0xFFE6E6E6), // set border color
                    width: 1.0),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                      offset: Offset(0.0, 0.5),
                      blurRadius: 0.5)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Monthly SIP Amount",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: Color.fromRGBO(0, 0, 0, 0.87),
                        fontSize: 14)),
                new Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Text(
                    "₹ " +
                        fmf
                            .copyWith(
                            amount: double.parse(_value_SIP
                                .toStringAsFixed(0)
                                .toString()),
                            fractionDigits: 0)
                            .output
                            .nonSymbol,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromRGBO(0, 0, 0, 0.38),
                        fontSize: 16)),
                new Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Divider(
                  color: Color.fromRGBO(0, 0, 0, 0.12),
                ),
                new Padding(
                  padding: EdgeInsets.only(left: 20, top: 10, right: 20),
                ),
                // GradientProgressIndicator(
                //   gradient: LinearGradient(
                //       colors: [Color(0xFF5596e6), Color(0xFF51dbb6)]),
                //   value: 0.6,
                // ),

                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.cyanAccent[100],
                    inactiveTrackColor: Colors.grey,
                    trackHeight: 5.0,
                    valueIndicatorColor: Colors.black,
                    showValueIndicator: ShowValueIndicator.always,
                    thumbColor: Colors.lightBlueAccent[700],
                    thumbShape:
                    RoundSliderThumbShape(enabledThumbRadius: 8.0),
                    overlayColor: Colors.purple.withAlpha(32),
                    overlayShape:
                    RoundSliderOverlayShape(overlayRadius: 14.0),
                  ),
                  child: Slider(
                      value: _value_SIP,
                      min: 0,
                      max: 100000,
                      onChanged: (value) {

                        setState(() {
                          value.toStringAsFixed(2);
                          print(value.toString());
                          _value_SIP = value;
                          /*              calculationRate=(calculationGoalRate/12);
                          calculationNPer=(calculationGoalYear*12);
                          calculationPvif=(pow((1+calculationRate),calculationNPer));
                          calculationE11=calculationRate/(calculationPvif+1);
                          calculationE12=calculationGoalAmount+calculationPvif;
                          calculationOtherValue=pow(_value_lipsum*(1+calculationGoalRate),calculationGoalYear);
                          calculationPMT=calculationE11*(calculationPvif-calculationOtherValue);*/
                          _value_lipsum=calculationPMT;
                          // double.parse(fmf
                          //         .copyWith(
                          //             amount: double.parse(_value_SIP.toStringAsFixed(0).toString()),
                          //             fractionDigits: 0)
                          //         .output
                          //         .nonSymbol);
                          print(value.toString());
                          // _value_lipsum =0;
                        });
                      }),
                ),

                new Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
              ],
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          new Container(
            padding:
            EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
            decoration: BoxDecoration(
                color: Color(0XFFFAFAFA),
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                    color: Color(0xFFE6E6E6), // set border color
                    width: 1.0),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                      offset: Offset(0.0, 0.5),
                      blurRadius: 0.5)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Lumpsum Amount",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                        color: Color.fromRGBO(0, 0, 0, 0.87),
                        fontSize: 14)),
                new Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Text(
                    ("₹ " +
                        fmf
                            .copyWith(
                            amount: double.parse(_value_lipsum
                                .toStringAsFixed(0)
                                .toString()),
                            fractionDigits: 0)
                            .output
                            .nonSymbol),
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color.fromRGBO(0, 0, 0, 0.38),
                        fontSize: 16)),
                new Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Divider(
                  color: Color.fromRGBO(0, 0, 0, 0.12),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
//                   GradientProgressIndicator(
//                     gradient: LinearGradient(
//                         colors: [Color(0xFF5596e6), Color(0xFF51dbb6)]),
//                     value: 0.6,
//                  ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.cyanAccent[100],
                    inactiveTrackColor: Colors.grey,
                    trackHeight: 5.0,
                    thumbColor: Colors.lightBlueAccent[700],
                    thumbShape:
                    RoundSliderThumbShape(enabledThumbRadius: 8.0),
                    overlayColor: Colors.purple.withAlpha(32),
                    overlayShape:
                    RoundSliderOverlayShape(overlayRadius: 14.0),
                  ),
                  child: Slider(
                      min: 0,
                      max: 100000,
                      value: _value_lipsum,
                      onChanged: (value) {

                        setState(() {
                          value.toStringAsFixed(2);

                          _value_lipsum = value;
                          /* calculationRate=(calculationGoalRate/12);
                          calculationNPer=(calculationGoalYear*12);
                          calculationPvif=(pow((1+calculationRate),calculationNPer));
                          calculationE11=calculationRate/(calculationPvif+1);
                          calculationE12=calculationGoalAmount+calculationPvif;
                          calculationOtherValue=pow(_value_lipsum*(1+calculationGoalRate),calculationGoalYear);
                          calculationPMT=calculationE11*(calculationPvif-calculationOtherValue);
                          _value_lipsum=calculationPMT;*/
                          // _value_SIP =0;
                        });
                      }),
                ),

                new Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
              ],
            ),
          ),

          Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      /*   Navigator.push(
                        context,
                        //context is current session refer to current widget
                        MaterialPageRoute(builder: (context) => ListExample()),
                      );*/
                      Navigator.of(context).pushNamed('/simpleList');
                    },
                    child: Text(
                      'Simple List View',
                      style:
                          TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListExampleClick()),
                      );
                    },
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    color: Colors.red,
                    textColor: Colors.yellow,
                    splashColor: Colors.green,
                    child: Text('Click List View',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.start),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
