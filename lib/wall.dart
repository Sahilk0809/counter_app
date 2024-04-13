import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          shadowColor: Colors.black,
          centerTitle: true,
          backgroundColor: Color(0xff212121),
          leading: const Icon(
            Icons.account_circle_sharp,
            size: 35,
            color: Colors.white,
          ),
          title: const Text(
            'THE WALL',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 35,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              row1(),
              row2(),
              row1(),
              row2(),
              row1(),
              row2(),
              row1(),
              row2(),
            ],
          ),
        ),
      ),
    );
  }

  Row row2() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10, bottom: 10),
          height: 100,
          width: 157,
          color: Color(0xff5D4037),
        ),
        Container(
          height: 100,
          width: 114,
          color: Color(0xff5D4037),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, bottom: 5),
          height: 100,
          width: 157,
          color: Color(0xff5D4037),
        ),
      ],
    );
  }

  Row row1() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10, top: 5, bottom: 5),
          height: 100,
          width: 114,
          color: Color(0xff5D4037),
        ),
        Container(
          height: 100,
          width: 200,
          color: Color(0xff5D4037),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
          height: 100,
          width: 114,
          color: Color(0xff5D4037),
        ),
      ],
    );
  }
}
