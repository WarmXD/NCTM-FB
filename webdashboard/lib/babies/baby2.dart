import 'package:flutter/material.dart';

class BabyTwo extends StatefulWidget {
  const BabyTwo({super.key});

  @override
  State<BabyTwo> createState() => _BabyTwoState();
}

class _BabyTwoState extends State<BabyTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 40, 15, 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Baby 2",
                style: TextStyle(fontSize: 35),
              ),
              SizedBox(width: 870),
              Text(
                "Temperature Monitoring",
                style: TextStyle(fontSize: 35),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 230, 227, 227),
                ),
                height: 400,
                width: 675,
              ),
              SizedBox(width: 20),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 230, 227, 227),
                ),
                height: 500,
                width: 675,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 15, 15, 15),
                      padding: const EdgeInsets.fromLTRB(50, 7, 50, 7),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Text("Date", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                      padding: const EdgeInsets.fromLTRB(50, 7, 50, 7),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Text("Time", style: TextStyle(fontSize: 30)),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(15, 15, 30, 15),
                      padding: const EdgeInsets.fromLTRB(5, 7, 5, 7),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child:
                          Text("Temperature", style: TextStyle(fontSize: 30)),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
