import 'package:flutter/material.dart';
import 'colors.dart';

class SelectWay extends StatefulWidget {
  SelectWay({Key? key}) : super(key: key);

  @override
  State<SelectWay> createState() => _SelectWayState();
}

class _SelectWayState extends State<SelectWay> {
  bool ispressed = true;
  bool ispressed1 = true;
  bool ispressed2 = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: height * 0.0001, bottom: height * 0.01),
      decoration: const BoxDecoration(
          color: AppColors.backgroundcolor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: height * 0.01),
            child: Text("Primary Services", style: headline1(height * 0.024)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                elevation: 5.0,
                color: ispressed ? AppColors.white : AppColors.heading,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (() {
                        setState(() {
                          ispressed = !ispressed;
                        });
                      }),
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.bus_alert,
                                  size: 30,
                                  color: Colors.green,
                                ),
                                Center(
                                  child: Text(
                                    "Bus",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 5.0,
                color: ispressed1 ? AppColors.white : AppColors.heading,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (() {
                        setState(() {
                          ispressed1 = !ispressed1;
                        });
                      }),
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.train,
                                  size: 30,
                                  color:
                                      ispressed1 ? Colors.green : Colors.white,
                                ),
                                Center(
                                  child: Text(
                                    "Train",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 5.0,
                color: ispressed2 ? AppColors.white : AppColors.heading,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (() {
                        setState(() {
                          ispressed2 = !ispressed2;
                        });
                      }),
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.subway,
                                  size: 30,
                                  color:
                                      ispressed2 ? Colors.green : Colors.white,
                                ),
                                Center(
                                  child: Text(
                                    "Metro",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Secondaryservices extends StatefulWidget {
  Secondaryservices({Key? key}) : super(key: key);

  @override
  State<Secondaryservices> createState() => _SecondaryservicesState();
}

class _SecondaryservicesState extends State<Secondaryservices> {
  bool ispressed = true;
  bool ispressed1 = true;
  bool ispressed2 = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      // color: AppColors.backgroundcolor,
      // alignment: Alignment.center,
      padding: EdgeInsets.only(
          left: height * 0.0001, top: height * 0.005, bottom: height * 0.02),
      // height: MediaQuery.of(context).size.height * 0.30,
      // width: MediaQuery.of(context).size.width * 0.95,
      decoration: const BoxDecoration(
          color: AppColors.backgroundcolor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      // padding: const EdgeInsets.only(left: 16, right: 16, top: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: height * 0.01),
            child: Text("Secondary Services", style: headline1(height * 0.024)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                elevation: 5.0,
                color: ispressed ? AppColors.white : AppColors.heading,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (() {
                        setState(() {
                          ispressed = !ispressed;
                        });
                      }),
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.local_taxi,
                                  size: 30,
                                  color:
                                      ispressed ? Colors.green : Colors.white,
                                ),
                                Center(
                                  child: Text(
                                    "Cab",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: ispressed
                                            ? AppColors.heading1
                                            : Colors.white),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 5.0,
                color: ispressed1 ? AppColors.white : AppColors.heading,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ispressed1 = !ispressed1;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.electric_rickshaw,
                                  size: 30,
                                  color:
                                      ispressed1 ? Colors.green : Colors.white,
                                ),
                                Center(
                                  child: Text(
                                    "Auto",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: ispressed1
                                            ? AppColors.heading1
                                            : Colors.white),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 5.0,
                color: ispressed2 ? AppColors.white : AppColors.heading,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ispressed2 = !ispressed2;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.two_wheeler,
                                  size: 30,
                                  color:
                                      ispressed2 ? Colors.green : Colors.white,
                                ),
                                Center(
                                  child: Text(
                                    "Moto",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: ispressed2
                                            ? AppColors.heading1
                                            : Colors.white),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
