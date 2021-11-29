import 'package:flutter/material.dart';

class Clockhand extends StatelessWidget {
  const Clockhand(
      {Key? key,
      required this.rotationZAngle,
      required this.handThickness,
      required this.handLength,
      required this.color})
      : super(key: key);

  final double rotationZAngle; //function of elapsed time
  final double handThickness;
  final double handLength;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..translate(-handThickness / 2, 0.0, 0.0)
        ..rotateZ(rotationZAngle),
      alignment: Alignment.topCenter,
      child: Container(
        width: handThickness,
        height: handLength,
        color: const Color(0xffA59EBF),
      ),
    );
  }
}
