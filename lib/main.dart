import 'package:deltanews/longscreen.dart';
import 'package:deltanews/widgets/account.dart';
import 'package:deltanews/widgets/bookmarkwidget.dart';
import 'package:deltanews/widgets/homewidget.dart';
import 'package:deltanews/widgets/searchwidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delta News',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  int currentIndex = 0;

  static const List<Widget> selectedIndex = [
    HomeWidget(),
    SearchWidget(),
    BookMarkWidget(),
    AccountWidget()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // centerTitle: true,
        leadingWidth: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 120,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
          child: Container(
            height: 30,
            width: 30,
            child: Image.asset(
              "assets/images/pic1.jpeg",
              // height: 70,
              // width: 30,
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Text(
            "Delta News",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 20, 0),
            child: CircleAvatar(
              child: Icon(
                Icons.notifications_rounded,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
      body: selectedIndex[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.blue,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                label: "Bookmark", icon: Icon(Icons.bookmark_outline)),
            BottomNavigationBarItem(
                label: "Account", icon: Icon(Icons.person_rounded))
          ]),
    );
  }
}
