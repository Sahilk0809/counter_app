import 'package:flutter/Material.dart';

import 'home/component/icons_editor_method.dart';

void main() {
  runApp(MyApp());
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
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          Icons.account_circle_sharp,
        ),
        title: const Text(
          'Icons Editor',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            // Icon container...
            margin: const EdgeInsets.all(15),
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 50,
              color: selectColor,
            ),
          ),
          ofText(t1: 'Select Color'),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(15),
            height: 120,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  //generating the list of the colors...
                  children: List.generate(
                    colorList.length,
                    (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectColor = colorList[index];
                          });
                        },
                        child: colorBox(c1: colorList[index])),
                  ),
                ),
              ),
            ),
          ),
          ofText(t1: 'Select Icon'),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(15),
            height: 120,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  //generating the list of the icons...
                  children: List.generate(
                    iconList.length,
                    (index) => GestureDetector(
                      onTap: () {
                        selectIcons = iconList[index];
                      },
                      child: iconBox(i1: iconList[index]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
