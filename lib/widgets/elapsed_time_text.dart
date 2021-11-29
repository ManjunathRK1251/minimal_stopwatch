import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_stopwatch/widgets/size_helpers.dart';

class ElapsedTimeText extends StatelessWidget {
  const ElapsedTimeText({Key? key, required this.elapsed}) : super(key: key);

  final Duration elapsed;

  @override
  Widget build(BuildContext context) {
    final hundreds = (elapsed.inMilliseconds / 10) % 100;
    final seconds = elapsed.inSeconds % 60;
    final minutes = elapsed.inMinutes % 60;

    final hundredStr = hundreds.toStringAsFixed(0).padLeft(2, '0');
    final secondsStr = seconds.toString().padLeft(2, '0');
    final minutesStr = minutes.toString().padLeft(2, '0');

    const digitWidth = 42.0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TimeDigit(minutesStr.substring(0, 1), width: digitWidth),
        TimeDigit(minutesStr.substring(1, 2), width: digitWidth),
        const TimeDigit(':', width: 25),
        TimeDigit(secondsStr.substring(0, 1), width: digitWidth),
        TimeDigit(secondsStr.substring(1, 2), width: digitWidth),
        const TimeDigit('.', width: 25),
        TimeDigit(hundredStr.substring(0, 1), width: digitWidth),
        TimeDigit(hundredStr.substring(1, 2), width: digitWidth),
      ],
    );
  }
}

class TimeDigit extends StatelessWidget {
  const TimeDigit(this.text, {Key? key, required this.width}) : super(key: key);

  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.alata(
          fontSize: displayWidth(context) * 0.159,
          color: Colors.white,
          shadows: <Shadow>[
            const Shadow(
              offset: Offset(10.0, 10.0),
              blurRadius: 20.0,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
