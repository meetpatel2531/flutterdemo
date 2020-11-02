import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
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
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Inquiry",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10, left: 10, top: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.all(
                  Radius.circular(10) //                 <--- border radius here
                  ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3.0,
                    spreadRadius: 1.0,
                    offset: Offset(0.0, 2.0))
              ],
            ),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        "20",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "New",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Inquiry",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  color: Colors.black38,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "40",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "Site",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Visits",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  color: Colors.black38,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "10",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "Walking",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Custom",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  color: Colors.black38,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "5",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "Repeat",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Visits",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 180,
            child: Column(
              children: [
                Text(
                  "Events",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(
                                10) //                 <--- border radius here
                            ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3.0,
                              spreadRadius: 1.0,
                              offset: Offset(0.0, 2.0))
                        ],
                      ),
                      height: 100,
                      width: 160,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.cake,
                                size: 28,
                              ),
                              Text(
                                "07",
                                style: TextStyle(fontSize: 24),
                              )
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 22),
                              child: Text(
                                "Birthday",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(
                                10) //                 <--- border radius here
                            ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3.0,
                              spreadRadius: 1.0,
                              offset: Offset(0.0, 2.0))
                        ],
                      ),
                      height: 100,
                      width: 160,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 28,
                              ),
                              Text(
                                "07",
                                style: TextStyle(fontSize: 24),
                              )
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 22),
                              child: Text(
                                "Birthday",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
