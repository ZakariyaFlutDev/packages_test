import 'package:flutter/material.dart';
import 'package:packages_test/pages/awesome_dialog_page.dart';
import 'package:packages_test/pages/fluttertoast_page.dart';
import 'package:packages_test/pages/google_font_page.dart';

import 'get_version_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id ="home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              color: Colors.lightBlue,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, FlutterToastPage.id);
                },
                child: Text("Flutter Toast"),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              color: Colors.lightBlue,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, GoogleFontPage.id);
                },
                child: Text("Google Fonts"),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              color: Colors.lightBlue,
              child: ElevatedButton(
                onPressed: (){
                  // Navigator.pushNamed(context, GetVersionPage.id);
                },
                child: Text("Get Version"),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              color: Colors.lightBlue,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, AwesomePage.id);
                },
                child: Text("Awesome Dialog"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
