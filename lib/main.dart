import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_stopwatch/widgets/reset_button.dart';
import 'package:minimal_stopwatch/widgets/size_helpers.dart';
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
      home: homescreen(),
    );
  }
}

class homescreen extends StatelessWidget {
  const homescreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: displayWidth(context),
          height: displayHeight(context),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(0.29498612880706787, -0.9634561538696289),
                end: Alignment(0.9634561538696289, 1.3808166980743408),
                colors: [
                  Color.fromRGBO(32, 28, 70, 1),
                  Color.fromRGBO(63, 59, 169, 1)
                ]),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                left: displayWidth(context) * 0.29,
                top: displayHeight(context) * 0.05,
                child: SvgPicture.asset('assets/images/clock.svg'),
                width: displayWidth(context) * 0.4,
              ),
              Positioned(
                  bottom: 0.0,
                  child: SvgPicture.asset('assets/images/background.svg')),
              Positioned(
                left: displayWidth(context) * 0.1,
                bottom: displayHeight(context) * 0.254,
                child: GestureDetector(
                  onTap: () {},
                  child: ResetButton(),
                ),
              ),
              Positioned(
                left: displayWidth(context) * 0.59,
                bottom: displayHeight(context) * 0.254,
                child: GestureDetector(
                  onTap: () {},
                  child: StartButton(),
                ),
              ),
              Positioned(
                left: displayWidth(context) * 0.125,
                top: displayHeight(context) * 0.4,
                child: Text(
                  '12 : 16 . 34',
                  style: GoogleFonts.alata(
                    fontSize: displayWidth(context) * 0.159,
                    color: Colors.white,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(10.0, 10.0),
                        blurRadius: 20.0,
                        color: Colors.black45,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
