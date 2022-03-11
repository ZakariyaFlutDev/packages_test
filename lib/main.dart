import 'package:flutter/material.dart';
import 'package:packages_test/pages/awesome_dialog_page.dart';
import 'package:packages_test/pages/fluttertoast_page.dart';
import 'package:packages_test/pages/get_version_page.dart';
import 'package:packages_test/pages/google_font_page.dart';
import 'package:packages_test/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        FlutterToastPage.id:(context) => FlutterToastPage(),
        GoogleFontPage.id:(context) => GoogleFontPage(),
        AwesomePage.id:(context) => AwesomePage(),
        //Null safety yo'qligi uchun Get version ishlamadi
        // GetVersionPage.id:(context) => GetVersionPage(),
      },
    );
  }
}
