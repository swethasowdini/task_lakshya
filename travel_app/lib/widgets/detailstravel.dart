import 'package:flutter/material.dart';
import 'package:travel_app/widgets/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/deatils_screen2.dart';
import '../screens/details_screen.dart';
import '../screens/homepage.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(children: [
      SizedBox(
          height: height * 0.2,
          child: Padding(
              padding: EdgeInsets.only(top: height * 0.01),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: AppColors.backgroundcolor,
                  elevation: 5,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    // margin: EdgeInsets.only(right: 2),
                    // decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Colors.grey,
                    //     ),
                    //     borderRadius: BorderRadius.circular(9)),
                    // padding: EdgeInsets.all(2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Chennai Central",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: height * 0.024,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Icon(
                                      Icons.date_range,
                                      color: AppColors.heading,
                                    ),
                                    Text(
                                      "Mon,Aug 10, 2022",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.add_road,
                                      color: AppColors.heading,
                                    ),
                                    Text("Single Journey"),
                                  ],
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Velachari",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: height * 0.024,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Icon(
                                      Icons.schedule,
                                      color: AppColors.heading,
                                    ),
                                    Text(
                                      "10.34 AM",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Icon(
                                      Icons.person,
                                      color: AppColors.heading,
                                    ),
                                    Text("05 Adults"),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Home()));
                                  },
                                  child: Icon(
                                    Icons.edit,
                                    size: 20,
                                    color: AppColors.heading,
                                  ),
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        CircleBorder()),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.all(5)),
                                    backgroundColor: MaterialStateProperty.all(
                                        AppColors.white), // <-- Button color
                                    // <-- Splash color
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                const Text(
                                  "",
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.stroller,
                                      color: AppColors.heading,
                                    ),
                                    Text("01 Infant"),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                              ],
                            ),
                            //  Column(
                            //    children: [
                            //      Row(
                            //           mainAxisSize: MainAxisSize.min,
                            //           children: [
                            //             Icon(
                            //               Icons.stroller,
                            //               color: AppColors.heading,
                            //             ),
                            //             Text("01 Infant"),
                            //           ],
                            //         ),
                            //    ],
                            //  ),
                          ],
                        ),
                      ],
                    ),
                  )))),
    ]);
  }
}

class AvailblePackages extends StatelessWidget {
  AvailblePackages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.6,
      decoration: BoxDecoration(
          color: AppColors.backgroundcolor,
          // border: Border.all(
          //   color: Colors.grey,
          // ),
          borderRadius: BorderRadius.circular(9)),
      child: Column(children: [
        Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
                right: height * 0.01, left: height * 0.01, top: height * 0.01),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 236, 239, 243),
                // border: Border.all(
                //   color: Colors.grey,
                // ),
                borderRadius: BorderRadius.circular(9)),
            padding: const EdgeInsets.all(8),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Bus",
                        style: TextStyle(fontSize: 14),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 20,
                      ),
                      const Text(
                        "Car",
                        style: TextStyle(fontSize: 14),
                      ),
                      const Spacer(),
                      Text(
                        '₹',
                        style: GoogleFonts.lato(
                            fontSize: 18, color: AppColors.heading),
                      ),
                      const Text(
                        "145/-",
                        style:
                            TextStyle(fontSize: 14, color: AppColors.heading),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
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
                              child: Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.bus_alert,
                                        size: 30,
                                        color: Colors.green,
                                      ),
                                      Center(
                                        child: Text(
                                          "Bus-A/C",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 20,
                      ),
                      Card(
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
                              child: Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.bus_alert,
                                        size: 30,
                                        color: Colors.green,
                                      ),
                                      Center(
                                        child: Text(
                                          "Bus-Ord",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 20,
                      ),
                      Card(
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
                              child: Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.local_taxi,
                                        size: 30,
                                        color: Colors.green,
                                      ),
                                      Center(
                                        child: Text(
                                          "Car-SUV",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: height * 0.02, left: height * 0.02),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
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
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
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
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
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
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          child: Text("Book",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black)),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(5)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.greenAccent),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.greenAccent),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                      side: BorderSide(
                                          color: Colors.greenAccent)))),
                          onPressed: () => null),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      TextButton(
                          child: Text("Details",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black)),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(5)),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                      side: BorderSide(color: Colors.white)))),
                          onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen()),
                              )),
                    ],
                  )
                ])),
        SizedBox(
          height: height * 0.01,
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(right: height * 0.01, left: height * 0.01),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 236, 239, 243),
                // border: Border.all(
                //   color: Colors.grey,
                // ),
                borderRadius: BorderRadius.circular(9)),
            padding: const EdgeInsets.all(8),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Bus",
                        style: TextStyle(fontSize: 14),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 20,
                      ),
                      const Text(
                        "Train",
                        style: TextStyle(fontSize: 14),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 20,
                      ),
                      const Text(
                        "Car",
                        style: TextStyle(fontSize: 14),
                      ),
                      const Spacer(),
                      Text(
                        '₹',
                        style: GoogleFonts.lato(
                            fontSize: 18, color: AppColors.heading),
                      ),
                      const Text(
                        "120/-",
                        style:
                            TextStyle(fontSize: 14, color: AppColors.heading),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
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
                              child: Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.bus_alert,
                                        size: 30,
                                        color: Colors.green,
                                      ),
                                      Center(
                                        child: Text(
                                          "Bus-Ord",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 20,
                      ),
                      Card(
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
                              child: Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.train,
                                        size: 30,
                                        color: Colors.green,
                                      ),
                                      Center(
                                        child: Text(
                                          "Train",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 20,
                      ),
                      Card(
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
                              child: Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.local_taxi,
                                        size: 30,
                                        color: Colors.green,
                                      ),
                                      Center(
                                        child: Text(
                                          "Car-SUV",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: height * 0.02, left: height * 0.02),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
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
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
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
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
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
                        ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: Text("Book",
                            style:
                                TextStyle(fontSize: 14, color: Colors.black)),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.greenAccent),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.greenAccent),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(
                                        color: Colors.greenAccent)))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen2()),
                          );
                        },
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      TextButton(
                        child: Text("Details",
                            style:
                                TextStyle(fontSize: 14, color: Colors.black)),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(5)),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(color: Colors.white)))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen2()),
                          );
                        },
                      ),
                    ],
                  )
                ]))
      ]),
    );
  }
}
