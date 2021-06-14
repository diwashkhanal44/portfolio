import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Work extends StatelessWidget {
  const Work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Work'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: Center(
          child: Text(
            "1. SWFTEA",
            style: GoogleFonts.aBeeZee(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
