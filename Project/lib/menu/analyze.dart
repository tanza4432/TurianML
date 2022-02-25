import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/menu/information.dart';

class analyze extends StatelessWidget {
  TextEditingController data = new TextEditingController();

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
        backgroundColor: Colors.greenAccent[400],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  icon: Icon(
                    Icons.mode,
                    color: Colors.black,
                  ),
                  labelText: "ป้อนข้อมูลลักษณะต้นทุเรียน",
                  labelStyle: TextStyle(color: Colors.black)),
              controller: data,
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              print(data.text);
            },
            child: Container(
              height: 60.0,
              width: 150.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(2.0, 8.0),
                      blurRadius: 10.0,
                      color: Colors.black12)
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(22.0),
              ),
              child: Center(
                child: Text(
                  "ค้นหาข้อมูล",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 3,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
