import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
final Uri _url = Uri.parse('https://www.instagram.com');
final Uri face_url = Uri.parse('https://www.facebook.com');

Future<void> face_launchUrl() async {
  if (!await launchUrl(face_url)) {
    throw 'Could not launch $face_url';
  }
  
}
Future<void> inst_launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
  
}

class URLClass extends StatelessWidget {
   URLClass({required this.myfun,required this.title,required this.Subtitle,required this.myicon});
  String? title;
  String? Subtitle;
  IconData? myicon;
  Function()? myfun;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap: myfun,
              child: Container(
                child: ListTile(
                  title: Text("$title",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                  subtitle: Text("$Subtitle"),
                  leading: Icon(myicon,color: Colors.purple,),
                ),
              ),
            );
  }
}