import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/menu/information.dart';

class analyze extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'วิเคราะห์โรครากเน่าโคนเน่า',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  icon: Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                  labelText: "ป้อนข้อมูล",
                  labelStyle: TextStyle(color: Colors.black)),
              // controller: email,
            ),
          ),
        ],
      ),
    );
  }
}
