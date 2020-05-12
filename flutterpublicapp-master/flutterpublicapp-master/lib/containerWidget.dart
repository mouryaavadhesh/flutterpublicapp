

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleContainerWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (
      appBar: AppBar(
        title: Text("Container Widget"),
      ),

      body: Center(
        child: Container(
            alignment: AlignmentDirectional(0.0,0.0),

          color: Colors.green.shade400,
           child:Container (
              margin: EdgeInsets.only(left: 20.0),
             padding: new EdgeInsets.all(20.0),
             transform: new Matrix4.rotationZ(0.5),
             color: Colors.yellow,
            constraints: BoxConstraints.expand(),
           child: Text("Avadhesh"),
           )
        ),
      )

    );
  }

}