import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_stopwatch/widgets/elapsed_time_text.dart';
import 'package:minimal_stopwatch/widgets/reset_button.dart';
import 'package:minimal_stopwatch/widgets/size_helpers.dart';
import 'package:minimal_stopwatch/widgets/start_stop_button.dart';

class Stopwatch extends StatefulWidget {
  const Stopwatch({
    Key? key,
  }) : super(key: key);

  @override
  State<Stopwatch> createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch>
    with SingleTickerProviderStateMixin {
  late final Ticker _ticker;
  Duration _previouslyElapsed = Duration.zero;
  Duration _currentlyElapsed = Duration.zero;
  Duration get _elapsed => _previouslyElapsed + _currentlyElapsed;
  bool _isRunning = false;

  @override
  void initState() {
    super.initState();
    _ticker = this.createTicker((elapsed) {
      setState(() {
        _currentlyElapsed = elapsed;
      });
    });
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  void _toggleRunning() {
    setState(() {
      _isRunning = !_isRunning;
      if (_isRunning) {
        _ticker.start();
      } else {
        _ticker.stop();
        _previouslyElapsed += _currentlyElapsed;
        _currentlyElapsed = Duration.zero;
      }
    });
  }

  void _reset() {
    _ticker.stop();
    setState(() {
      _isRunning = false;
      _previouslyElapsed = Duration.zero;
      _currentlyElapsed = Duration.zero;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
                  onTap: _reset,
                  child: ResetButton(),
                ),
              ),
              Positioned(
                left: displayWidth(context) * 0.59,
                bottom: displayHeight(context) * 0.254,
                child: GestureDetector(
                  onTap: _toggleRunning,
                  child: StartButton(
                    isRunning: _isRunning,
                  ),
                ),
              ),
              Positioned(
                left: displayWidth(context) * 0.125,
                top: displayHeight(context) * 0.4,
                child: ElapsedTimeText(
                  elapsed: _elapsed,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
