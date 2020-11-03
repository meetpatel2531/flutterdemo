import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 10,
      ),
      Container(
          width: 80.0,
          height: 40.0,
          child: RaisedButton(
              child: Row(children: [
                Text('Add',
                    style: TextStyle(fontSize: 20, color: Colors.grey[700])),
                Icon(Icons.add, color: Colors.grey[700])
              ]),
              onPressed: () {},
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.black),
              ))),
    ]);
  }
}
// RaisedButton(
//   onPressed: () {},
//   textColor: Colors.white,
//   padding: const EdgeInsets.all(0.0),
//   shape:
//       RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
//   child: Container(
//       width: 85,
//       decoration: BoxDecoration(
//         color: Colors.grey[100],
//         borderRadius: BorderRadius.circular(18),
//       ),
//       padding: const EdgeInsets.all(10.0),
//       child: Row(
//         children: [
//           Text('Add',
//               style: TextStyle(fontSize: 20, color: Colors.grey[700])),
//           Icon(Icons.add, color: Colors.grey[700])
//         ],
//       )),
// ),
