import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/education.dart';
import 'package:portfolio/screens/work.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Diwash's portfolio",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final color = Colors.white;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 15, 15, 15),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Work()),
                          );
                        },
                        child: Text('Work',
                            style: GoogleFonts.lato(fontSize: 20))),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Education()),
                        );
                      },
                      child: Text('Education',
                          style: GoogleFonts.lato(fontSize: 20))),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: TextButton(
                        onPressed: () {
                          showAlertDialog(context);
                        },
                        child: Text('Contact',
                            style: GoogleFonts.lato(fontSize: 20))),
                  ),
                ],
              ),
              SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 3,
                    child: Column(
                      children: [
                        Text(
                          "Hi, I'm DIWASH",
                          style:
                              GoogleFonts.aBeeZee(color: color, fontSize: 30),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "I build value through Experience",
                          style:
                              GoogleFonts.aBeeZee(color: color, fontSize: 50),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Flutter Developer",
                          style:
                              GoogleFonts.aBeeZee(color: color, fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 100),
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        //border: Border.all(color: Colors.white70),
                        image: DecorationImage(
                          image: AssetImage("images/dk.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "Exit",
          style: TextStyle(
            color: Colors.orange,
            fontSize: 25,
          ),
        )),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Align(
        alignment: Alignment.center,
        child: Text(
          "Contact Informaton",
          style: TextStyle(
            color: Colors.orange,
            fontSize: 30,
          ),
        )),
    content: Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width * 0.70,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(Icons.email, size: 25),
                  ),
                  TextSpan(
                    text: "    diwashkhanal44@gmail.com",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(Icons.phone_android_rounded, size: 25),
                  ),
                  TextSpan(
                    text: "    9844699614",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
