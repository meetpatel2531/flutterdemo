import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 30,
      ),
      RaisedButton(
        onPressed: () {},
        textColor: Colors.white,
        padding: const EdgeInsets.all(0.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        child: Container(
            width: 85,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(18),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text('Add',
                    style: TextStyle(fontSize: 20, color: Colors.grey[700])),
                Icon(Icons.add, color: Colors.grey[700])
              ],
            )),
      ),
    ]);
  }
}
