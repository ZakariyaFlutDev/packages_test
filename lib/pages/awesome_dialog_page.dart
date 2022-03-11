import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
class AwesomePage extends StatefulWidget {
  const AwesomePage({Key? key}) : super(key: key);

  static const String id ="awesom_page";

  @override
  _AwesomePageState createState() => _AwesomePageState();
}

class _AwesomePageState extends State<AwesomePage> {

  aDialog(){
    return AwesomeDialog(
      context: context,
      animType: AnimType.SCALE,
      dialogType: DialogType.INFO,
      body: Center(child: Text(
        'If the body is specified, then title and description will be ignored, this allows to further customize the dialogue.',
        style: TextStyle(fontStyle: FontStyle.italic),
      ),),
      title: 'This is Ignored',
      desc:   'This is also Ignored',
      btnOkOnPress: () {},
    )..show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("PRESS for Awesom Dialog"),
            onPressed: (){
              aDialog();
            },
          ),
        ),
      ),
    );
  }
}
