import 'package:flutter/material.dart';
import 'colors.dart';

class PassengerList extends StatefulWidget {
  const PassengerList({Key? key}) : super(key: key);

  @override
  State<PassengerList> createState() => _PassengerListState();
}

class _PassengerListState extends State<PassengerList> {
  int _itemCount = 0;
  int _itemCount1 = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(
          left: height * 0.0001, top: height * 0.005, bottom: height * 0.02),
      decoration: const BoxDecoration(
          color: AppColors.backgroundcolor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 170,
            height: 100,
            child: Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.person,
                            color: AppColors.heading,
                            size: 32,
                          ),
                          Text(
                            "No of Adults",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          // Image.asset("assets/flutter.png", width: 100),
                          _itemCount != 0
                              ? Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                      borderRadius: BorderRadius.circular(15)),
                                  height: 35.0,
                                  width: 40.0,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.remove,
                                      size: 18,
                                    ),
                                    onPressed: () {
                                      setState(() => _itemCount--);
                                    },
                                  ),
                                )
                              : Container(),
                          Text(_itemCount.toString()),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(15)),
                            height: 35.0,
                            width: 40.0,
                            child: IconButton(
                              icon: Icon(
                                Icons.add,
                                size: 18,
                              ),
                              onPressed: () {
                                setState(() => _itemCount++);
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          ),
          SizedBox(
            width: 170,
            height: 100,
            child: Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.stroller,
                            color: AppColors.heading,
                            size: 32,
                          ),
                          Text(
                            "No of Infants",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          // Image.asset("assets/flutter.png", width: 100),
                          _itemCount1 != 0
                              ? Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 1),
                                      borderRadius: BorderRadius.circular(15)),
                                  height: 35.0,
                                  width: 40.0,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.remove,
                                      size: 18,
                                    ),
                                    onPressed: () {
                                      setState(() => _itemCount1--);
                                    },
                                  ),
                                )
                              : Container(),
                          Text(_itemCount1.toString()),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(15)),
                            height: 35.0,
                            width: 40.0,
                            child: IconButton(
                              icon: Icon(
                                Icons.add,
                                size: 18,
                              ),
                              onPressed: () {
                                setState(() => _itemCount1++);
                              },
                            ),
                          )
                          // IconButton(
                          //     icon: const Icon(Icons.add),
                          //     onPressed: () => setState(() => _itemCount1++))
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
