import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_stopwatch/widgets/size_helpers.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.center,
        child: Text(
          'RESET',
          style: GoogleFonts.rubik(
            fontWeight: FontWeight.bold,
            fontSize: displayWidth(context) * 0.0510,
            color: const Color(0xff33365B),
          ),
        ),
      ),
      width: displayWidth(context) * 0.334,
      height: displayWidth(context) * 0.130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          const BoxShadow(
            color: Color(0xff484477),
            blurRadius: 50,
            offset: Offset(20, 20),
          ),
        ],
        color: Colors.white,
      ),
    );
  }
}
