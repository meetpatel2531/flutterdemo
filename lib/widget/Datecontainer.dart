import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

var now = new DateTime.now();

class Datecontainer extends StatefulWidget {
  // const Datecontainer({
  //   Key key,
  // }) : super(key: key);

  @override
  _DatecontainerState createState() => _DatecontainerState();
}

class _DatecontainerState extends State<Datecontainer> {
  bool _isStart = true;
  String _stopwatchText = '00:00:00';
  final _stopWatch = new Stopwatch();
  final _timeout = const Duration(seconds: 1);

  void _startTimeout() {
    new Timer(_timeout, _handleTimeout);
  }

  void _handleTimeout() {
    if (_stopWatch.isRunning) {
      _startTimeout();
    }
    setState(() {
      _setStopwatchText();
    });
  }

  void _startStopButtonPressed() {
    setState(() {
      if (_stopWatch.isRunning) {
        _isStart = true;
        _stopWatch.stop();
        print(_stopwatchText);
      } else {
        _isStart = false;
        _stopWatch.start();
        _startTimeout();
      }
    });
  }

  void _resetButtonPressed() {
    if (_stopWatch.isRunning) {
      _startStopButtonPressed();
    }
    setState(() {
      _stopWatch.reset();
      _setStopwatchText();
    });
  }

  void _setStopwatchText() {
    _stopwatchText = _stopWatch.elapsed.inHours.toString().padLeft(2, '0') +
        ':' +
        (_stopWatch.elapsed.inMinutes % 60).toString().padLeft(2, '0') +
        ':' +
        (_stopWatch.elapsed.inSeconds % 60).toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.only(
            left: 10.0, top: 3.0, bottom: 2.0, right: 10.0),
        width: 500,
        height: 220.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 3.0,
                spreadRadius: 1.0,
                offset: Offset(0.0, 2.0))
          ],
        ),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  DateFormat('d').format(now) +
                      " " +
                      DateFormat('MMM').format(now),
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 4.0, top: 15.0),
                  alignment: Alignment.center,
                  width: 130.0,
                  height: 28.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue,
                  ),
                  child: Text(
                    _stopwatchText,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  width: 100,
                  margin: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          width: 40.0,
                          height: 30.0,
                          child: RaisedButton(
                              child: Icon(
                                  _isStart ? Icons.play_arrow : Icons.stop),
                              onPressed: _startStopButtonPressed,
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                                side: BorderSide(color: Colors.black),
                              ))),
                      SizedBox(
                          width: 50.0,
                          height: 30.0,
                          child: RaisedButton(
                              child: Text('end'),
                              onPressed: _resetButtonPressed,
                              color: Colors.amber,
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                                side: BorderSide(color: Colors.black),
                              ))),
                    ],
                  ),
                )
              ],
            ),
            Flexible(
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.watch_later_outlined,
                  size: 60.0,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ],
        ));
  }
}
