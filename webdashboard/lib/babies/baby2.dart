import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
            children: [
              FutureBuilder<String>(
                  future: getName(),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.hasData) {
                      return Text(
                        snapshot.data.toString(),
                        style: const TextStyle(
                          fontSize: 35,
                        ),
                      );
                    } else {
                      return const Text(
                        'No Baby',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      );
                    }
                  }),
              SizedBox(width: 500),
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

  Future<String> getName() async {
    List<String> names = [];
    //Map<String, dynamic> user = jsonDecode(jsonString);
    await FirebaseFirestore.instance.collection("Babies").get().then((event) {
      for (final doc in event.docs) {
        names.add(doc.data()['Fname'] + " " + doc.data()['Lname']);
      }
    });

    return names.length > 1 ? names[1] : 'No Baby';
  }
}
