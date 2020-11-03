import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:intl/intl.dart';
import 'package:project/widget/Countno.dart';
import 'package:project/widget/Datecontainer.dart';
import '../widget/Dropdown.dart';
import '../widget/GradientButton.dart';
import '../widget/Countno.dart';
import 'package:analog_clock/analog_clock.dart';

var now = new DateTime.now();

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Avinashi'),
          actions: [
            Icon(
              Icons.notifications_rounded,
              size: 32,
            ),
            Icon(
              Icons.account_circle_outlined,
              size: 32,
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.only(left: 8.0),
            width: 500,
            height: 40.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
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
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.search,
                    size: 24.0,
                    color: Colors.grey[800],
                    semanticLabel: 'search here',
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 330,
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search', border: InputBorder.none),
                    ),
                  ),
                )
              ],
            ),
          ),
          Datecontainer(),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.only(
                left: 10.0, top: 3.0, bottom: 2.0, right: 10.0),
            width: 500,
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
            child: Column(
              children: [
                Row(
                  children: [
                    Dropdown(),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [GradientButton()],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text("Schedule",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[700])),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text("Morning",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[700])),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text("Afternoon",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[700])),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text("Evening",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[700])),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text("Night",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[700])),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 1,
                    width: 500,
                    margin: EdgeInsets.only(left: 3, top: 7, bottom: 5),
                    decoration: BoxDecoration(color: Colors.black),
                    child: VerticalDivider(color: Colors.black)),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 100,
                          child: Icon(Icons.check_circle_rounded,
                              color: Colors.grey[700]),
                        ),
                        Container(
                            height: 30,
                            width: 120,
                            margin: EdgeInsets.only(left: 5),
                            child: Text("Task Name",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey[700]))),
                      ],
                    ),
                    Row(children: [
                      Container(
                        height: 30,
                        width: 100,
                        child: Icon(Icons.check_circle_rounded,
                            color: Colors.grey[700]),
                      ),
                      Container(
                          height: 30,
                          width: 120,
                          margin: EdgeInsets.only(left: 5),
                          child: Text("Task Name",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[700]))),
                    ]),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 100,
                          child: Icon(Icons.check_circle_rounded,
                              color: Colors.grey[700]),
                        ),
                        Container(
                            height: 30,
                            width: 120,
                            margin: EdgeInsets.only(left: 5),
                            child: Text("Task Name",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey[700]))),
                      ],
                    ),
                    Container(
                      height: 3,
                      width: 500,
                      margin: EdgeInsets.only(bottom: 1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [GradientButton()],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.only(
                left: 10.0, top: 3.0, bottom: 2.0, right: 10.0),
            width: 500,
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
            child: Column(
              children: [
                Row(
                  children: [
                    Dropdown(),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [GradientButton()],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Schedule",
                        style:
                            TextStyle(fontSize: 20, color: Colors.grey[700])),
                    Text("Morning",
                        style:
                            TextStyle(fontSize: 20, color: Colors.grey[700])),
                    Text("Afternoon",
                        style:
                            TextStyle(fontSize: 20, color: Colors.grey[700])),
                  ],
                ),
                Container(
                    height: 1,
                    width: 500,
                    margin: EdgeInsets.only(left: 3, top: 7, bottom: 5),
                    decoration: BoxDecoration(color: Colors.black),
                    child: VerticalDivider(color: Colors.black)),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 100,
                          child: Icon(Icons.check_circle_rounded,
                              color: Colors.grey[700]),
                        ),
                        Container(
                            height: 30,
                            width: 120,
                            margin: EdgeInsets.only(left: 5),
                            child: Text("Task Name",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey[700]))),
                      ],
                    ),
                    Row(children: [
                      Container(
                        height: 30,
                        width: 100,
                        child: Icon(Icons.check_circle_rounded,
                            color: Colors.grey[700]),
                      ),
                      Container(
                          height: 30,
                          width: 120,
                          margin: EdgeInsets.only(left: 5),
                          child: Text("Task Name",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.grey[700]))),
                    ]),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 100,
                          child: Icon(Icons.check_circle_rounded,
                              color: Colors.grey[700]),
                        ),
                        Container(
                            height: 30,
                            width: 120,
                            margin: EdgeInsets.only(left: 5),
                            child: Text("Task Name",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.grey[700]))),
                      ],
                    ),
                    Container(
                      height: 3,
                      width: 500,
                      margin: EdgeInsets.only(bottom: 1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [GradientButton()],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 200,
            child: AnalogClock(
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Colors.black),
                  color: Colors.transparent,
                  shape: BoxShape.circle),
              width: 150.0,
              isLive: true,
              hourHandColor: Colors.black,
              minuteHandColor: Colors.black,
              showSecondHand: true,
              numberColor: Colors.black87,
              showNumbers: true,
              textScaleFactor: 1.4,
              showTicks: false,
              showDigitalClock: false,
              datetime: DateTime(2019, 1, 1, 9, 12, 15),
            ),
          )
        ])),
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: Colors.blue,
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.red),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.apps, color: Colors.white),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.lock, color: Colors.white),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline, color: Colors.white),
                label: 'School',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.phone_forwarded, color: Colors.white),
                label: 'School',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.show_chart, color: Colors.white),
                label: 'School',
              ),
            ],
            selectedItemColor: Colors.amber[800],
            unselectedItemColor: Colors.white,
          ),
        ));
  }
}

//  child: Container(
//             height: 55,
//             width: 600,
//             decoration: BoxDecoration(color: Colors.blue),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   child: Icon(Icons.apps, color: Colors.white),
//                 ),
//                 Container(
//                   child: Icon(Icons.lock, color: Colors.white),
//                 ),
//                 Container(
//                   child: Icon(Icons.add_circle_outline, color: Colors.white),
//                 ),
//                 Container(
//                   child: Icon(Icons.phone_forwarded, color: Colors.white),
//                 ),
//                 Container(
//                   child: Icon(Icons.show_chart, color: Colors.white),
//                 )
//               ],
//             ),
//           )
