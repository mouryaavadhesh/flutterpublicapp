import 'package:flutter/material.dart';

// runApp() is a builtin method that initializes the app layout
// MyApp() (see below) is a widget that will be the root of our application.

void main() => runApp(ListExampleClick());

// the root widget of our application
class ListExampleClick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // This time instead of using a Container we are using the MaterialApp
    // widget, which is setup to make our app have the Material theme.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(primarySwatch: Colors.teal),
      // The Scaffold widget lays out our home page for us
      home: Scaffold(
        // We will pass an AppBar widget to the appBar property of Scaffold

        // The AppBar property takes a Text widget for its title property

        appBar: AppBar(
          title: Text('ListViews'),
        ),

        // The body property of the Scaffold widget is the main content of
        // our screen. Instead of directly giving it a widget we are going
        // to break it out into another method so that things don't get
        // too messy here.
        body: ListLayout(),
      ),
    );
  }
}

class ListLayout extends StatefulWidget {
  _ListViewClickListenerState createState() => _ListViewClickListenerState();
}

class _ListViewClickListenerState extends State<ListLayout> {
  final List<String> _myDataList=['Java','Kotlin','Flutter','Dart'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return ListView(

      children: _myDataList
          .map((data) => ListTile(
        leading: Icon(Icons.person),
        title: Text(data),
        onTap: () => Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("$data"),
          duration: Duration(seconds: 2)

        )),
      ))
          .toList(),

    );
  }
}
