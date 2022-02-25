import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/menu/information.dart';

class screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              button("ข้อมูลต้นทุเรียน", Colors.greenAccent,
                  Icons.auto_stories_outlined),
              SizedBox(height: 25),
              button("วิธีการปลูก / รักษา", Colors.greenAccent, Icons.article_outlined),
              SizedBox(height: 25),
              button("วิเคราะห์รากเน่าโคนเน่า", Colors.greenAccent, Icons.science_outlined),
            ],
          ),
        ),
      ),
    );
  }
}

class button extends StatelessWidget {
  button(this.text, this.colortheme, this.icon);
  String text;
  var colortheme;
  var icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => WebViewExample()),
  );
      },
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0.0, 20.0),
                blurRadius: 30.0,
                color: Colors.black12)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(22.0),
        ),
        child: Row(
          children: [
            Container(
              height: 80.0,
              width: 250.0,
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              decoration: BoxDecoration(
                color: colortheme,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(95.0),
                  topLeft: Radius.circular(95.0),
                  bottomRight: Radius.circular(300.0),
                ),
              ),
            ),
            Icon(
              icon,
              size: 40.0,
            )
          ],
        ),
      ),
    );
  }
}
