import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_stopwatch/widgets/size_helpers.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayWidth(context) * 0.334,
      height: displayWidth(context) * 0.13,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'START',
          style: GoogleFonts.rubik(
            fontWeight: FontWeight.bold,
            fontSize: displayWidth(context) * 0.0510,
            color: Color(0xff33365B),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Color(0xff484477),
            blurRadius: 50,
            offset: Offset(20, 20),
          ),
        ],
        color: Color(0xfff1ff3c),
      ),
    );
  }
}
