import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/widgets/colors.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  TextEditingController dateinput = TextEditingController();
  TextEditingController timeinput = TextEditingController();
  @override
  void initState() {
    timeinput.text = "";
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.16,
      decoration: BoxDecoration(
        color: AppColors.backgroundcolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: height * 0.0001, top: height * 0.02, bottom: height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: height * 0.015),
              child: Text("Scheduled Date & Time",
                  style: headline1(height * 0.024)),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 160,
                  decoration: const BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //     topRight: Radius.circular(5),
                    //     bottomRight: Radius.circular(5),
                    //   ),
                    //borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2, 0),
                        color: Colors.grey,
                        spreadRadius: 0,
                        blurRadius: 2,
                      ),
                    ],
                    border: Border(
                      left: BorderSide(color: AppColors.heading, width: 5),
                    ),
                    // borderRadius: BorderRadius.only(
                    //   topRight: Radius.circular(5),
                    //   bottomRight: Radius.circular(5),
                    // ),
                  ),
                  child: TextField(
                    controller: dateinput,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Date',
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                      suffixIcon: Icon(
                        Icons.date_range,
                        size: 30.0,
                        color: AppColors.heading,
                      ),
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(
                              2000), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2101));

                      if (pickedDate != null) {
                        print(
                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                        print(
                            formattedDate); //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement

                        setState(() {
                          dateinput.text =
                              formattedDate; //set output date to TextField value.
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                  ),
                ),
                Container(
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2, 0),
                        color: Colors.grey,
                        spreadRadius: 0,
                        blurRadius: 2,
                      ),
                    ],
                    border: Border(
                      left: BorderSide(color: AppColors.heading, width: 5),
                    ),
                  ),
                  child: TextField(
                    controller: timeinput,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Time',
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                      suffixIcon: Icon(
                        Icons.schedule,
                        size: 30.0,
                        color: AppColors.heading,
                      ),
                    ),
                    readOnly: true,
                    onTap: () async {
                      TimeOfDay? pickedTime = await showTimePicker(
                        initialTime: TimeOfDay.now(),
                        context: context,
                      );

                      if (pickedTime != null) {
                        print(pickedTime.format(context)); //output 10:51 PM
                        DateTime parsedTime = DateFormat.jm()
                            .parse(pickedTime.format(context).toString());
                        //converting to DateTime so that we can further format on different pattern.
                        print(parsedTime); //output 1970-01-01 22:53:00.000
                        String formattedTime =
                            DateFormat('HH:mm:ss').format(parsedTime);
                        print(formattedTime); //output 14:59:00
                        //DateFormat() is from intl package, you can format the time on any pattern you need.

                        setState(() {
                          timeinput.text =
                              formattedTime; //set the value of text field.
                        });
                      } else {
                        print("Time is not selected");
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
