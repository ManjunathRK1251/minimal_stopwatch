import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_stopwatch/widgets/reset_button.dart';
import 'package:minimal_stopwatch/widgets/start_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
        width: 428,
        height: 926,
        decoration: BoxDecoration(
            gradient : LinearGradient(
            begin: Alignment(0.29498612880706787,-0.9634561538696289),
            end: Alignment(0.9634561538696289,1.3808166980743408),
            colors: [Color.fromRGBO(32, 28, 70, 1),Color.fromRGBO(63, 59, 169, 1)]
          ),
        ),
        child: Stack(
          children: <Widget>[
            
            Positioned(left: 100.0, top: 80.0,child: SvgPicture.asset('assets/images/clock.svg')),
            Positioned(bottom: 0.0, child: SvgPicture.asset('assets/images/background.svg')),
            Positioned(
              left: 30.0,
              bottom: 200.0,
              child:GestureDetector(
                onTap: (){},
                child: ResetButton(),
              ),
            ),
            Positioned(
              left: 230.0,
              bottom: 200.0,
              child: GestureDetector(
                onTap: (){},
                child: StartButton(),
              ),
            ),
            Positioned(
              left: 60.0,
              top: 360.0,
              child: Text(
                '12 : 16 . 34',
                style: GoogleFonts.alata(
                  fontSize: 60,
                  color: Colors.white,
                  shadows: <Shadow>[
      // Shadow(
      //   offset: Offset(10.0, 10.0),
      //   blurRadius: 3.0,
      //   color: Color.fromARGB(255, 0, 0, 0),
      // ),
      Shadow(
        offset: Offset(10.0, 10.0),
        blurRadius: 20.0,
        color: Colors.black45,
      ),
                  ],
                ),
              ),
            ),
          ]
        )
          )
        ),
      ),
    );
  }
}



