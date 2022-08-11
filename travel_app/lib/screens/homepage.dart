import 'package:flutter/material.dart';
import 'package:travel_app/screens/packages_screen.dart';
import 'package:travel_app/widgets/colors.dart';

import '../widgets/datepicker.dart';
import '../widgets/destination.dart';
import '../widgets/options.dart';
import '../widgets/passengerslist.dart';
import '../widgets/selectway.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 8, 19, 26),
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
                SizedBox(height: 10),
                Container(
                  height: height * 0.57,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundcolor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      BoxDestination(),
                      SizedBox(height: 10),
                      SelectWay(),
                      SizedBox(height: 2),
                      Secondaryservices(),
                    ],
                  ),
                ),
                SizedBox(height: 2),
                Parking(),
                SizedBox(height: 10),
                DatePicker(),
                SizedBox(height: 10),
                PassengerList(),
                SizedBox(height: 10),
                RaisedButton(
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
                )
                // SelectOptions(),
                // SizedBox(height: 14),
                // Recommendation()
              ],
            ),
          ),
        ])),
      ),
    );
  }
}
