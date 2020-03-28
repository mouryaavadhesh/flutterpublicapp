import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  MyLogin createState() => new MyLogin();
}

class MyLogin extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              maxLength: 10,
              inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                counterText: "",
                labelText: "Enter your mobile number",
                labelStyle: TextStyle(color: Colors.black),
                prefixText: "+91 ",
                prefixStyle: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.amber,Colors.deepOrange]
                ),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF5596e6).withOpacity(.3)
                  )
                ]
              ),
              child: Center(
                child: Text('Login',
                    style: TextStyle(fontSize: 20), textAlign: TextAlign.start),
              ),
            )
          ],
        ),
      ),
    );
  }
}
