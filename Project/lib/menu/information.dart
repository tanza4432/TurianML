import 'dart:io';

 import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

 class Detail extends StatefulWidget {
   Detail(this.link);
   String link;
   
   @override
   DetailState createState() => DetailState(link);
 }

 class DetailState extends State<Detail> {
   DetailState(this.link);
   String link;
   @override
   void initState() {
     super.initState();
   }

   @override
   Widget build(BuildContext context) {
     return WebView(
       initialUrl: link,
     );
   }
 }