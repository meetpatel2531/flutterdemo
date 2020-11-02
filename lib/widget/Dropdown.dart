import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  Dropdown({Key key}) : super(key: key);

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 4.0, top: 18.0),
      width: 130.0,
      height: 30,
      padding: const EdgeInsets.only(left: 8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 3.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 2.0))
        ],
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          value: dropdownValue,
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(color: Colors.grey[700]),
              ),
            );
          }).toList(),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          style: Theme.of(context).textTheme.title,
        ),
      ),
    );
  }
}

// Container(
//         margin: const EdgeInsets.only(left: 4.0, top: 15.0),
//         width: 130.0,
//         height: 30.0,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             color: Colors.white,
//             border: Border.all(
//               color: Colors.grey,
//               width: 1,
//             )),
//         child: DropdownButtonHideUnderline<String>(
//               child: ButtonTheme(
//         alignedDropdown: true,
//           child: DropdownButton(
//             items: <String>['One', 'Two', 'Free', 'Four']
//               .map<DropdownMenuItem<String>>((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           },
//             onChanged:(String newValue) {
//             setState(() {
//               dropdownValue = newValue;
//             });
//           },,
//             style: Theme.of(context).textTheme.title,
//          ),
//       ),
//         ));
