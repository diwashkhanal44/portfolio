import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Education'),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Center(
            child: Text(
              "BACHLOR'S DEGREE IN COMPUTER ENGINEERING",
              style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 30),
            ),
          ),
        ));
  }
}
