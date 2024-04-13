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
        backgroundColor: Colors.amber,
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
            'BOLT',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 35,
                letterSpacing: 8),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 848,
                width: 130,
                color: Color(0xff212121),
                child: Text(
                  '⚡',
                  style: TextStyle(fontSize: 90),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
