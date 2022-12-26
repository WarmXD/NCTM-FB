import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class AddBabyy extends StatefulWidget {
  const AddBabyy({super.key});

  @override
  State<AddBabyy> createState() => _AddBabyyState();
}

class _AddBabyyState extends State<AddBabyy> {
  final fname_controller = TextEditingController();
  final lname_controller = TextEditingController();
  final sex_controller = TextEditingController();
  var db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1405,
        margin: const EdgeInsets.fromLTRB(15, 40, 15, 15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const Text('Add a baby!!!', style: TextStyle(fontSize: 55)),
              const SizedBox(height: 50),
              const Text('Enter you babies Details',
                  style: TextStyle(fontSize: 20)),
              TextField(
                controller: fname_controller,
                decoration: const InputDecoration(
                  labelText: 'Enter First Name',
                  hintText: 'First Name',
                ),
              ),
              TextField(
                controller: lname_controller,
                decoration: const InputDecoration(
                  labelText: 'Enter Last Name',
                  hintText: 'Last Name',
                ),
              ),
              TextField(
                controller: sex_controller,
                decoration: const InputDecoration(
                  labelText: 'Enter Sex',
                  hintText: 'Sex',
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 239, 106, 62))),
                child: Text("Add"),
                onPressed: () {
                  final Fname = fname_controller.text;
                  final Lname = lname_controller.text;
                  final Sex = sex_controller.text;
                  createBaby(Fname: Fname, Lname: Lname, Sex: Sex);
                },
              )
            ]));
  }

  Future createBaby({
    required String Fname,
    required String Lname,
    required String Sex,
  }) async {
    final docUser = FirebaseFirestore.instance.collection('Babies').doc();

    final user = UserData(
      id: docUser.id,
      Fname: Fname,
      Lname: Lname,
      Sex: Sex,
    );
    final json = user.getDataMap();
    await docUser.set(json);
  }
}

class UserData {
  String id;
  final String Fname;
  final String Lname;
  final String Sex;
  // final String ID;
  UserData({
    this.id = '',
    required this.Fname,
    required this.Lname,
    required this.Sex,
    //required this.ID
  });

  Map<String, dynamic> getDataMap() => {
        "ID": id,
        "Fname": Fname,
        "Lname": Lname,
        "Sex": Sex,
        //"ID": ID,
      };
}
