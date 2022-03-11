import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class FlutterToastPage extends StatefulWidget {
  const FlutterToastPage({Key? key}) : super(key: key);

  static const String id = "fluttertoast_page";

  @override
  _FlutterToastPageState createState() => _FlutterToastPageState();
}

class _FlutterToastPageState extends State<FlutterToastPage> {

  void fireToast(){
    Fluttertoast.showToast(
        msg: "Bu sizga ko'rinishi kerak bo'lgan toast xabar",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.lightBlueAccent,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 50,
          color: Colors.teal,
          child: ElevatedButton(
            child: Text("Press for see Toast"),
            onPressed: (){
              fireToast();
            },
          ),
        ),
      ),
    );
  }
}
