import 'package:flutter/material.dart';
import 'package:webdashboard/babies/baby1.dart';
import 'package:webdashboard/babies/baby2.dart';
import 'package:webdashboard/babies/baby3.dart';
import 'package:webdashboard/babies/baby4.dart';
import 'package:webdashboard/babies/baby5.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StatisticsPagee extends StatefulWidget {
  const StatisticsPagee({super.key});

  @override
  State<StatisticsPagee> createState() => _StatisticsPageeState();
}

class _StatisticsPageeState extends State<StatisticsPagee> {
  int index = 0;
  List<String> buttons = [
    'button1',
    'button2',
    'button3',
    'button4',
    'button5'
  ];
  List<Widget> babies = [
    BabyOne(),
    BabyTwo(),
    BabyThree(),
    BabyFour(),
    BabyFive()
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.fromLTRB(15, 40, 15, 15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const Text('Patient Temperature Data',
                  style: TextStyle(fontSize: 55)),
              const SizedBox(height: 50),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromARGB(255, 230, 227, 227),
                ),
                width: 1405,
                padding: EdgeInsets.fromLTRB(13, 25, 13, 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      const Text('List of Patients',
                          style: TextStyle(fontSize: 35)),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  index = 0;
                                });
                              },
                              style: ButtonStyle(
                                overlayColor:
                                    MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.hovered))
                                      return Color.fromARGB(255, 239, 106, 62);
                                    return null; // Defer to the widget's default.
                                  },
                                ),
                                backgroundColor: (index == 0)
                                    ? MaterialStateProperty.all(
                                        Color.fromARGB(255, 239, 106, 62))
                                    : MaterialStateProperty.all(Colors.white),
                              ),
                              child: FutureBuilder<List>(
                                  future: getName(),
                                  builder: (BuildContext context,
                                      AsyncSnapshot<List> snapshot) {
                                    if (snapshot.data!.length > 0) {
                                      return Text(
                                        snapshot.data!.elementAt(0).toString(),
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
                                  })),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  index = 1;
                                });
                              },
                              style: ButtonStyle(
                                overlayColor:
                                    MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.hovered))
                                      return Color.fromARGB(255, 239, 106, 62);
                                    return null; // Defer to the widget's default.
                                  },
                                ),
                                backgroundColor: (index == 1)
                                    ? MaterialStateProperty.all(
                                        Color.fromARGB(255, 239, 106, 62))
                                    : MaterialStateProperty.all(Colors.white),
                              ),
                              child: FutureBuilder<List>(
                                  future: getName(),
                                  builder: (BuildContext context,
                                      AsyncSnapshot<List> snapshot) {
                                    if (snapshot.data!.length > 1) {
                                      return Text(
                                        snapshot.data!.elementAt(1).toString(),
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
                                  })),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  index = 2;
                                });
                              },
                              style: ButtonStyle(
                                overlayColor:
                                    MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.hovered))
                                      return Color.fromARGB(255, 239, 106, 62);
                                    return null; // Defer to the widget's default.
                                  },
                                ),
                                backgroundColor: (index == 2)
                                    ? MaterialStateProperty.all(
                                        Color.fromARGB(255, 239, 106, 62))
                                    : MaterialStateProperty.all(Colors.white),
                              ),
                              child: FutureBuilder<List>(
                                  future: getName(),
                                  builder: (BuildContext context,
                                      AsyncSnapshot<List> snapshot) {
                                    if (snapshot.data!.length > 2) {
                                      return Text(
                                        snapshot.data!.elementAt(2).toString(),
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
                                  })),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  index = 3;
                                });
                              },
                              style: ButtonStyle(
                                overlayColor:
                                    MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.hovered))
                                      return Color.fromARGB(255, 239, 106, 62);
                                    return null; // Defer to the widget's default.
                                  },
                                ),
                                backgroundColor: (index == 3)
                                    ? MaterialStateProperty.all(
                                        Color.fromARGB(255, 239, 106, 62))
                                    : MaterialStateProperty.all(Colors.white),
                              ),
                              child: FutureBuilder<List>(
                                  future: getName(),
                                  builder: (BuildContext context,
                                      AsyncSnapshot<List> snapshot) {
                                    if (snapshot.data!.length > 3) {
                                      return Text(
                                        snapshot.data!.elementAt(3).toString(),
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
                                  })),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  index = 4;
                                });
                              },
                              style: ButtonStyle(
                                overlayColor:
                                    MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.hovered))
                                      return Color.fromARGB(255, 239, 106, 62);
                                    return null; // Defer to the widget's default.
                                  },
                                ),
                                backgroundColor: (index == 4)
                                    ? MaterialStateProperty.all(
                                        Color.fromARGB(255, 239, 106, 62))
                                    : MaterialStateProperty.all(Colors.white),
                              ),
                              child: FutureBuilder<List>(
                                  future: getName(),
                                  builder: (BuildContext context,
                                      AsyncSnapshot<List> snapshot) {
                                    if (snapshot.data!.length > 4) {
                                      return Text(
                                        snapshot.data!.elementAt(4).toString(),
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
                                  })),
                        ],
                      ),
                    ]),
              ),
              babies[index]
            ]),
      ),
    );
  }

  Future<List> getName() async {
    List<String> names = [];
    //Map<String, dynamic> user = jsonDecode(jsonString);
    await FirebaseFirestore.instance.collection("Babies").get().then((event) {
      for (final doc in event.docs) {
        names.add(doc.data()['Lname']);
      }
    });

    return names;
  }
}
