import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class GoogleFontPage extends StatefulWidget {
  const GoogleFontPage({Key? key}) : super(key: key);

  static const String id = "font_page";

  @override
  _GoogleFontPageState createState() => _GoogleFontPageState();
}

class _GoogleFontPageState extends State<GoogleFontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("google font", style: GoogleFonts.lato(fontSize: 24),),
            SizedBox(height: 20,),
            Text("google font emas", style: TextStyle(fontSize: 24),),
          ],
        )
      ),
    );
  }
}
