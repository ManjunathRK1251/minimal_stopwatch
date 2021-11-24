import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            fontSize: 20.0,
            color: Color(0xff33365B),
          ),
        ),
      ),
      width: 131,
      height: 51,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
              BoxShadow(
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
