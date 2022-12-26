import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';

class HomePagee extends StatefulWidget {
  const HomePagee({super.key});

  @override
  State<HomePagee> createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
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
            const Text(
              "DASHBOARD",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Welcome!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "Quick Stats",
              style: TextStyle(
                fontSize: 33,
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      margin: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                      padding: const EdgeInsets.fromLTRB(48, 34, 48, 43),
                      child: Column(children: <Widget>[
                        FutureBuilder(
                            future: getCount(),
                            builder: (BuildContext context,
                                AsyncSnapshot<int> snapshot) {
                              if (snapshot.hasData) {
                                return Text(
                                  snapshot.data.toString(),
                                  style: TextStyle(
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              } else {
                                return Text(
                                  '0',
                                  style: TextStyle(
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              }
                            }),
                        Text(
                          "TOTAL CHILD",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ])),
                  Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      margin: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                      padding: const EdgeInsets.fromLTRB(55, 30, 55, 30),
                      child: Column(children: <Widget>[
                        Text(
                          "27 C",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "AVE. AMBIENT \nTEMPERATURE",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ])),
                  Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      margin: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                      child: Column(children: <Widget>[
                        Text(
                          "38 C",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "HIGHEST RECORDED \nTEMPERATURE",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ])),
                  Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      margin: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                      padding: const EdgeInsets.fromLTRB(40, 34, 40, 46),
                      child: Column(children: <Widget>[
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "CHILD WITH FEVER",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ])),
                ]),
            SizedBox(height: 25),
            const Text(
              "Patient Temperature Forecast",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                      padding: const EdgeInsets.fromLTRB(48, 34, 48, 43),
                      child: Text("Insert Chart here")),
                  Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                      ),
                      margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                      padding: const EdgeInsets.fromLTRB(48, 34, 48, 43),
                      child: Text("Insert Chart here")),
                ])
          ],
        ),
      ),
    );
  }

  Future<int> getCount() async {
    int t_babies = 0;
    //Map<String, dynamic> user = jsonDecode(jsonString);
    await FirebaseFirestore.instance.collection("Babies").get().then(
          (res) => t_babies = res.size,
          onError: (e) => print("Error completing: $e"),
        );
    print(t_babies);
    return t_babies;
  }
}
