import 'package:flutter/material.dart';
import 'package:travel_app/widgets/colors.dart';

import '../widgets/datepicker.dart';
import '../widgets/destination.dart';
import '../widgets/detailstravel.dart';
import '../widgets/options.dart';
import '../widgets/passengerslist.dart';
import '../widgets/selectway.dart';

class Packages extends StatefulWidget {
  const Packages({Key? key}) : super(key: key);

  @override
  State<Packages> createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
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
                SizedBox(height: height*0.005),
                Details(),
                SizedBox(height: height*0.005),
                AvailblePackages(),

              ],
            ),
          ),
        ])),
      ),
    );
  }
}
