import 'package:flutter/material.dart';
import 'package:travel_app/widgets/colors.dart';

class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 100,
      child: Padding(
        padding: EdgeInsets.only(top: height * 0.02),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: AppColors.backgroundcolor,
          elevation: 5,
          child: ListTile(
            leading: ClipRRect(
              borderRadius: const BorderRadius.all(
                  const Radius.circular(10.0)), //add border radius here
              child: Image.asset('assets/images.jpg'), //add image location here
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text('Hi Sanjay,', style: headline(height * 0.020)),
              // Icon(Icons.notifications,color: AppColors.heading,),
            ),
            subtitle: Text('Welcome to Organisation',
                style: headline1(height * 0.018)),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.notifications,
                  color: AppColors.heading,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Myself"),
                      const Icon(
                        Icons.expand_more,
                        size: 16,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                // ElevatedButton(
                //     child: Row(
                //       mainAxisSize: MainAxisSize.min,
                //       children: [
                //         Text("My Self",
                //             style: TextStyle(fontSize: 14, color: Colors.black)),
                //         Icon(
                //           Icons.expand_more,
                //           size: 16,
                //           color: Colors.black,
                //         ),
                //       ],
                //     ),
                //     style: ButtonStyle(
                //         padding: MaterialStateProperty.all<EdgeInsets>(
                //             EdgeInsets.all(10)),
                //         backgroundColor:
                //             MaterialStateProperty.all<Color>(Colors.white),
                //         foregroundColor:
                //             MaterialStateProperty.all<Color>(Colors.white),
                //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //             RoundedRectangleBorder(
                //                 borderRadius: BorderRadius.circular(20.0),
                //                 side: BorderSide(color: Colors.white)))),
                //     onPressed: () => null),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Parking extends StatelessWidget {
  const Parking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      color: AppColors.backgroundcolor,
      elevation: 5,
      child: ListTile(
        leading: const Icon(
          Icons.location_on,
          size: 32,
        ), //add image location here

        title: Text('Parking', style: headline(height * 0.028)),
        trailing: TextButton(
            child: const Text("Book parking",
                style: TextStyle(fontSize: 14, color: Colors.black)),
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(12)),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.greenAccent),
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.greenAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(color: Colors.greenAccent)))),
            onPressed: () => null),
      ),
    );
  }
}
