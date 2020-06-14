import 'package:flutter/material.dart';

class AboutDialogDemo extends StatefulWidget {
  @override
  DialogAbout createState() => new DialogAbout();
}

class DialogAbout extends State<AboutDialogDemo> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('AboutDialog Demo'),
      ),
      body: Center(
        child: MyMenu(),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AboutDialog(),
        MaterialButton(
          onPressed: () {
            showAboutDialog(
              context: context,
              applicationVersion: '2.0',
              applicationIcon: FlutterLogo(),
              applicationLegalese:
                  'This application has been approved for all audiences.',
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text('This is where I\'d put more information about '
                      'this app, if there was anything interesting to say.'),
                ),
              ],
            );
          },
          child: Text('More Info'),
        )
      ],
    );
  }
}
