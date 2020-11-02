// import 'package:flutter/material.dart';

// class Call extends StatefulWidget {
//   @override
//   _CallState createState() => _CallState();
// }

// class _CallState extends State<Call> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Avinashi'),
//         actions: [
//           Icon(
//             Icons.notifications_rounded,
//             size: 32,
//           ),
//           Icon(
//             Icons.account_circle_outlined,
//             size: 32,
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//           child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Today's Call",
//             style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
//           ),
//           Container(
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey, width: 1),
//               borderRadius: BorderRadius.all(
//                   Radius.circular(10) //                       <--- border radius here
//                   ),
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.grey,
//                     blurRadius: 3.0,
//                     spreadRadius: 1.0,
//                     offset: Offset(0.0, 2.0))
//               ],
//             ),
//             height: 600,
//             width: 600,
//             child: Row(
//               children: [
//                 Container(
//                   child: Column(
//                     children: [
//                       Text(
//                         "Calls",
//                         style: TextStyle(
//                           fontSize: 25,
//                         ),
//                       ),
//                       Text(
//                         "27",
//                         style: TextStyle(
//                           fontSize: 15,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   child: Column(
//                     children: [
//                       Text(
//                         "Duration",
//                         style: TextStyle(
//                           fontSize: 25,
//                         ),
//                       ),
//                       Text(
//                         "6h 40 min",
//                         style: TextStyle(
//                           fontSize: 15,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey, width: 1),
//                     borderRadius: BorderRadius.all(Radius.circular(
//                             10) //                 <--- border radius here
//                         ),
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                           color: Colors.grey,
//                           blurRadius: 3.0,
//                           spreadRadius: 1.0,
//                           offset: Offset(0.0, 2.0))
//                     ],
//                   ),
//                   height: 200,
//                   width: 200,
//                 )
//               ],
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }




import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({
    Key key,
    int secondsRemaining,
    this.countDownTimerStyle,
    this.whenTimeExpires,
    this.countDownFormatter,
  })  : secondsRemaining = secondsRemaining,
        super(key: key);

  final int secondsRemaining;
  final Function whenTimeExpires;
  final Function countDownFormatter;
  final TextStyle countDownTimerStyle;

  State createState() => new _CountState();
}

class _CountState extends State<Count> with TickerProviderStateMixin {
  AnimationController _controller;
  Duration duration;

  String get timerDisplayString {
    Duration duration = _controller.duration * _controller.value;
    return widget.countDownFormatter != null
        ? widget.countDownFormatter(duration.inSeconds)
        : (duration.inSeconds);
    // In case user doesn't provide formatter use the default one
    // for that create a method which will be called formatHHMMSS or whatever you like
  }

  @override
  void initState() {
    super.initState();
    duration = new Duration(seconds: widget.secondsRemaining);
    _controller = new AnimationController(
      vsync: this,
      duration: duration,
    );
    _controller.reverse(from: widget.secondsRemaining.toDouble());
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed ||
          status == AnimationStatus.dismissed) {
        widget.whenTimeExpires();
      }
    });
  }

  @override
  void didUpdateWidget(Count oldWidget) {
    if (widget.secondsRemaining != oldWidget.secondsRemaining) {
      setState(() {
        duration = new Duration(seconds: widget.secondsRemaining);
        _controller.dispose();
        _controller = new AnimationController(
          vsync: this,
          duration: duration,
        );
        _controller.reverse(from: widget.secondsRemaining.toDouble());
        _controller.addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            widget.whenTimeExpires();
          } else if (status == AnimationStatus.dismissed) {
            print("Animation Complete");
          }
        });
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
        child: AnimatedBuilder(
            animation: _controller,
            builder: (_, Widget child) {
              return Text(
                timerDisplayString,
                style: widget.countDownTimerStyle,
              );
            }));
  }
}
