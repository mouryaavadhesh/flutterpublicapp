import 'package:flutter/material.dart';


void main()=>runApp(ListExample());

class ListExample extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('ListViews'),),
        body: BodyLayout(),
      ),
    );
  }


}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _myListView(context);
  }

  Widget _myListView(BuildContext)
  {
    return ListView(
      children: <Widget>[ListTile(title: Text('Avadhesh--1'),),ListTile(title: Text('Avadhesh--2'),),
  ListTile(title: Text('Avadhesh--3'),),ListTile(title: Text('Avadhesh--4'),),
        ListTile(title: Text('Avadhesh--5'),),
        ListTile(title: Text('Avadhesh--6'),),
        ListTile(title: Text('Avadhesh--7'),),
        ListTile(title: Text('Avadhesh--8'),),
        ListTile(title: Text('Avadhesh--9'),),
        ListTile(title: Text('Avadhesh--10'),),
        ListTile(title: Text('Avadhesh--11'),),
        ListTile(title: Text('Avadhesh--12'),),
        ListTile(title: Text('Avadhesh--13'),),
        ListTile(title: Text('Avadhesh--14'),),
        ListTile(title: Text('Avadhesh--15'),),
        ListTile(title: Text('Avadhesh--16'),),
      ],

    );
  }

}