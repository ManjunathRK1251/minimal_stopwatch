import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_stopwatch/widgets/reset_button.dart';
import 'package:minimal_stopwatch/widgets/size_helpers.dart';
import 'package:minimal_stopwatch/widgets/start_stop_button.dart';
import 'package:minimal_stopwatch/screens/stopwatch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stopwatch(),
    );
  }
}
