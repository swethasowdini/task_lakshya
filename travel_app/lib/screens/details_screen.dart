import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/screens/packages_screen.dart';

import '../widgets/colors.dart';
import '../widgets/options.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Stack(children: [
          Container(
            margin:
                const EdgeInsets.only(left: 5, top: 10, bottom: 20, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Options(),
                SizedBox(height: height * 0.005),
                Detailsdata(),
              ],
            ),
          ),
        ])),
      ),
    );
  }
}

class Detailsdata extends StatelessWidget {
  Detailsdata({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: height * 0.01, left: height * 0.01, right: height * 0.01),
          child: Container(
            height: height * 0.06,
            decoration: const BoxDecoration(
              color: AppColors.heading,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding:
                  EdgeInsets.only(left: height * 0.01, right: height * 0.01),
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Bus+Car",
                      style: TextStyle(color: Colors.white),
                    ),
                    Spacer(),
                    Row(children: [
                      Text(
                        '₹',
                        style: GoogleFonts.lato(
                            fontSize: 18, color: AppColors.white),
                      ),
                      Text(
                        "145/-",
                        style: TextStyle(color: Colors.white),
                      )
                    ]),
                  ]),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: height * 0.01, right: height * 0.01),
          child: Container(
            decoration: const BoxDecoration(
              color: AppColors.backgroundcolor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.01,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  color: Colors.white,
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Chennai Central (11.00 AM - 11.20 AM)",
                        style: TextStyle(fontSize: 14, color: Colors.black)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 8.0,
                        color: AppColors.backgroundcolor,
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.bus_alert,
                                size: 36,
                                color: AppColors.heading,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    _iconDestination(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              "Bus-AC-A1",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '₹',
                                style: GoogleFonts.lato(
                                    fontSize: 18, color: AppColors.heading1),
                              ),
                              const Text(
                                "35/-",
                                style: TextStyle(
                                    fontSize: 14, color: AppColors.heading1),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  color: Colors.white,
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Adyar (11.20 AM - 11.40 AM)",
                        style: TextStyle(fontSize: 14, color: Colors.black)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 8.0,
                        color: AppColors.backgroundcolor,
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.bus_alert,
                                size: 36,
                                color: AppColors.heading,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    _iconDestination(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              "Bus-Ord-A1",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '₹',
                                style: GoogleFonts.lato(
                                    fontSize: 18, color: AppColors.heading1),
                              ),
                              const Text(
                                "10/-",
                                style: TextStyle(
                                    fontSize: 14, color: AppColors.heading1),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  color: Colors.white,
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Thiruvinayur (11.20 AM - 11.40 AM)",
                        style: TextStyle(fontSize: 14, color: Colors.black)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 8.0,
                        color: AppColors.backgroundcolor,
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.local_taxi,
                                size: 36,
                                color: AppColors.heading,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    _iconDestination(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              "Car-SUV",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '₹',
                                style: GoogleFonts.lato(
                                    fontSize: 18, color: AppColors.heading1),
                              ),
                              const Text(
                                "100/-",
                                style: TextStyle(
                                    fontSize: 14, color: AppColors.heading1),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  color: Colors.white,
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Velachary (11.20 AM - 11.40 AM)",
                        style: TextStyle(fontSize: 14, color: Colors.black)),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Packages()),
              );
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)),
            padding: const EdgeInsets.all(0.0),
            child: Ink(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [AppColors.heading, Colors.greenAccent]),
                borderRadius: BorderRadius.all(Radius.circular(80.0)),
              ),
              child: Container(
                constraints: const BoxConstraints(
                    minWidth: 88.0,
                    minHeight: 46.0), // min sizes for Material buttons
                alignment: Alignment.center,
                child: const Text(
                  'Proceed to book',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

Widget _iconDestination() {
  return Column(
    children: const [
      Icon(Icons.fiber_manual_record, color: Colors.greenAccent, size: 8),
      Icon(Icons.fiber_manual_record, color: Colors.greenAccent, size: 8),
      Icon(Icons.fiber_manual_record, color: Colors.greenAccent, size: 8),
      Icon(Icons.fiber_manual_record, color: Colors.greenAccent, size: 8),
      Icon(Icons.fiber_manual_record, color: Colors.greenAccent, size: 8),
      Icon(Icons.fiber_manual_record, color: Colors.greenAccent, size: 8),
      Icon(Icons.fiber_manual_record, color: Colors.greenAccent, size: 8),
      Icon(Icons.fiber_manual_record, color: Colors.greenAccent, size: 8),
      Icon(Icons.fiber_manual_record, color: Colors.greenAccent, size: 8),
      Icon(Icons.fiber_manual_record, color: Colors.greenAccent, size: 8),
      Icon(Icons.fiber_manual_record, color: Colors.greenAccent, size: 8),
    ],
  );
}
