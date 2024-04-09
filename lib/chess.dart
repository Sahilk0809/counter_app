import 'Package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home/component/chess_method.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
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
    return SafeArea(child:
    Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          centerTitle: true,
          leading: const Icon(
            Icons.account_circle_sharp,
            color: Colors.white,
          ),
          title: const Text(
            'Chess',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Align(
          child: Container(
            height: 448,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 4),
            ),
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
        )
    ),
    );
  }
}
