import 'package:flutter/material.dart';
import 'package:travel_app/widgets/colors.dart';

class BoxDestination extends StatelessWidget {
  const BoxDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        // color: AppColors.backgroundcolor,
      // alignment: Alignment.center,
        padding: EdgeInsets.only(left: height * 0.0001, top: height * 0.005,bottom: height*0.02),
      // height: MediaQuery.of(context).size.height * 0.30,
      // width: MediaQuery.of(context).size.width * 0.95,
      decoration: const BoxDecoration(
          color: AppColors.backgroundcolor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _originAndDestionationIcon(context),
        ],
      ),
    );
  }
}

Widget _originAndDestionationIcon(context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Stack(
      overflow: Overflow.visible,
      clipBehavior: Clip.none,
      children: <Widget>[
        Column(
          children: [
            Card(
              child: ClipPath(
                child: Container(
                  width: height * 0.9,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.greenAccent, width: 5),
                    ),
                  ),
                  child: Text(
                    'Chennai Central',
                    style: headline1(height * 0.020),
                  ),
                ),
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
              ),
            ),
            Card(
              child: ClipPath(
                child: Container(
                  width: height * 0.9,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: AppColors.heading, width: 5),
                    ),
                  ),
                  child: Text(
                    'Velachery',
                    style: headline1(height * 0.020),
                  ),
                ),
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
              ),
            ),
          ],
        ),
        Positioned(
          child: CircleAvatar(
              backgroundColor: Colors.greenAccent,
              radius: 25,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(
                  Icons.swap_vert_rounded,
                  color: Colors.white,
                ),
                onPressed: () {},
              )),
          right: 20,
          bottom: 30,
        ),
      ]);
}


// Widget _iconDestination() {
//   return Container(
//     child: Column(
//       children: const [
//         Icon(Icons.location_on,
//             color: Color.fromARGB(255, 231, 49, 17), size: 30),
//         Icon(Icons.fiber_manual_record,
//             color: Color.fromARGB(255, 224, 91, 68), size: 12),
//         Icon(Icons.fiber_manual_record,
//             color: Color.fromARGB(255, 218, 118, 101), size: 12),
//         Icon(Icons.fiber_manual_record,
//             color: Color.fromARGB(255, 224, 150, 137), size: 12),
//         Icon(Icons.fiber_manual_record,
//             color: Color.fromARGB(255, 107, 180, 98), size: 12),
//         Icon(Icons.fiber_manual_record,
//             color: Color.fromARGB(255, 69, 158, 74), size: 12),
//         Icon(Icons.fiber_manual_record,
//             color: Color.fromARGB(255, 43, 165, 43), size: 12),
//         Icon(Icons.airplanemode_active,
//             color: Color.fromARGB(255, 29, 192, 7), size: 30),
//       ],
//     ),
//   );
// }
