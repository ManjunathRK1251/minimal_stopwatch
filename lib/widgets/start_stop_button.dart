import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_stopwatch/widgets/size_helpers.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    Key? key,
    required this.isRunning,
  }) : super(key: key);

  final bool isRunning;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: displayWidth(context) * 0.334,
      height: displayWidth(context) * 0.13,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          isRunning ? 'STOP' : 'START',
          style: GoogleFonts.rubik(
            fontWeight: FontWeight.bold,
            fontSize: displayWidth(context) * 0.0510,
            color: isRunning ? Colors.white : Color(0xff33365B),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: isRunning ? Colors.red : Color(0xfff1ff3c),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Color(0xff484477),
            blurRadius: 50,
            offset: Offset(20, 20),
          ),
        ],
      ),
    );
  }
}
