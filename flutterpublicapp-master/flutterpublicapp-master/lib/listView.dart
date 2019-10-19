import 'package:flutter/material.dart';

// runApp() is a builtin method that initializes the app layout
// MyApp() (see below) is a widget that will be the root of our application.

void main() => runApp(ListExample());

// the root widget of our application
class ListExample extends StatelessWidget {
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
        body: BodyLayout(),
      ),
    );
  }
}

// This is where we will play with the Listview widget
class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _myListView(context);
  }

  Widget _myListView(BuildContext) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('Avadhesh--1'),
        ),
        ListTile(
          title: Text('Avadhesh--2'),
        ),
        ListTile(
          title: Text('Avadhesh--3'),
        ),
        ListTile(
          title: Text('Avadhesh--4'),
        ),
        ListTile(
          title: Text('Avadhesh--5'),
        ),
        ListTile(
          title: Text('Avadhesh--6'),
        ),
        ListTile(
          title: Text('Avadhesh--7'),
        ),
        ListTile(
          title: Text('Avadhesh--8'),
        ),
        ListTile(
          title: Text('Avadhesh--9'),
        ),
        ListTile(
          title: Text('Avadhesh--10'),
        ),
        ListTile(
          title: Text('Avadhesh--11'),
        ),
        ListTile(
          title: Text('Avadhesh--12'),
        ),
        ListTile(
          title: Text('Avadhesh--13'),
        ),
        ListTile(
          title: Text('Avadhesh--14'),
        ),
        ListTile(
          title: Text('Avadhesh--15'),
        ),
        ListTile(
          title: Text('Avadhesh--16'),
        ),
      ],
    );
  }
}
