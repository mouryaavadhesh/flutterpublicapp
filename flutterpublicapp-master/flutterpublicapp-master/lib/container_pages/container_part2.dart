import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleContainerPart2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Container Widget"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new Center(
                child: new Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.white,
                  child: new Container(
                    decoration: new BoxDecoration(
                        border: new Border.all(
                            color: Colors.green,
                            width: 5.0,
                            style: BorderStyle.solid
                        ),
                        image: new DecorationImage(
                          image: new AssetImage('assets/images/logo.png'),
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              new Center(
                child: new Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.white,
                  child: new Container(
                    decoration: new BoxDecoration(
                        border: new Border(
                          top: new BorderSide(
                              color: Colors.green,
                              width: 5.0,
                              style: BorderStyle.solid
                          ),
                        ),
                        image: new DecorationImage(
                          image: new AssetImage('assets/images/logo.png'),
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              new Center(
                child:new Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.white,
                  child: new Container(
                    decoration: new BoxDecoration(
                        border: new Border.all(
                            color: Colors.green,
                            width: 5.0,
                            style: BorderStyle.solid
                        ),
                        borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                        image: new DecorationImage(
                          image: new AssetImage('assets/images/logo.png'),
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              new Center(
                child: new Container(
                  width: 200.0,
                  height: 200.0,
                  child: new Container(
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        border: new Border.all(
                            color: Colors.green,
                            width: 5.0,
                            style: BorderStyle.solid),
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.red,
                              blurRadius: 20.0,
                              spreadRadius: 4.0),

                        ],
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new AssetImage('assets/images/logo.png'),
                        )),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              new Center(
                child: new Container(
                  width: 200.0,
                  height: 200.0,
                  child: new Container(
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        border: new Border.all(
                            color: Colors.green,
                            width: 5.0,
                            style: BorderStyle.solid),
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.red,
                              blurRadius: 20.0,
                              spreadRadius: 4.0),

                        ],
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new AssetImage('assets/images/logo.png'),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

