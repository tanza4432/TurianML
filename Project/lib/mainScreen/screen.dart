import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/menu/analyze.dart';
import 'package:flutter_splash_screen/menu/information.dart';

class screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              button(
                "ข้อมูลต้นทุเรียน",
                Colors.greenAccent,
                Icons.auto_stories_outlined,
                Detail(
                    "https://medthai.com/%E0%B8%97%E0%B8%B8%E0%B9%80%E0%B8%A3%E0%B8%B5%E0%B8%A2%E0%B8%99/"),
              ),
              SizedBox(height: 25),
              button(
                "วิธีการปลูก / รักษา",
                Colors.greenAccent,
                Icons.article_outlined,
                Detail("https://www.sanook.com/home/29873/"),
              ),
              SizedBox(height: 25),
              button("วิเคราะห์รากเน่าโคนเน่า", Colors.greenAccent,
                  Icons.science_outlined, analyze()),
            ],
          ),
        ),
      ),
    );
  }
}

class button extends StatelessWidget {
  button(this.text, this.colortheme, this.icon, this.link);
  String text;
  var colortheme;
  var icon;
  var link;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => link),
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
