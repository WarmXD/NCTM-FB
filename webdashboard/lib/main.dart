import 'package:flutter/material.dart';
import 'package:webdashboard/home_page.dart';
import 'package:webdashboard/stat_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:webdashboard/add_baby_page.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.orange,
          scaffoldBackgroundColor: const Color.fromARGB(255, 211, 209, 209),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Color.fromARGB(255, 0, 0, 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
              minimumSize: Size(250, 50),
            ),
          )),
      home: const RootPagee(),
    );
  }
}

class RootPagee extends StatefulWidget {
  const RootPagee({super.key});

  @override
  State<RootPagee> createState() => _RootPageeState();
}

class _RootPageeState extends State<RootPagee> {
  int currentPage = 0;

  List<Widget> pages = const [
    HomePagee(),
    StatisticsPagee(),
    AddBabyy(),
  ];
  void _showcurrentPage(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NavigationRail(
            groupAlignment: -.75,
            destinations: const [
              NavigationRailDestination(
                padding: EdgeInsets.fromLTRB(13, 25, 13, 25),
                icon: Icon(
                  Icons.home_outlined,
                  size: 45,
                ),
                selectedIcon: Icon(
                  Icons.home_sharp,
                  size: 45,
                ),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.fromLTRB(13, 25, 13, 25),
                icon: Icon(
                  Icons.auto_graph_outlined,
                  size: 45,
                ),
                selectedIcon: Icon(
                  Icons.auto_graph,
                  size: 45,
                ),
                label: Text('Statistics'),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.fromLTRB(13, 25, 13, 25),
                icon: Icon(
                  Icons.add_box_outlined,
                  size: 45,
                ),
                selectedIcon: Icon(
                  Icons.add_box,
                  size: 45,
                ),
                label: Text('Home'),
              ),
            ],
            onDestinationSelected: _showcurrentPage,
            selectedIndex: currentPage,
          ),
          const VerticalDivider(thickness: 1, width: 1),
          pages[currentPage],
        ],
      ),
    );
  }
}
