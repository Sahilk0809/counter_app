import 'package:flutter/Material.dart';

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
                margin: EdgeInsets.all(15),
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 50,
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
                      children: [
                        colorBox(c1: Colors.yellow),
                        colorBox(c1: Colors.blue),
                        colorBox(c1: Colors.pinkAccent),
                        colorBox(c1: Colors.purple),
                        colorBox(c1: Colors.grey),
                        colorBox(c1: Colors.red),
                      ],
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
                      children: [
                        selectIcon(
                            i1: const Icon(
                              Icons.add,
                              size: 40,
                              color: Colors.blue,
                            )),
                        selectIcon(
                            i1: const Icon(
                              Icons.stop_circle,
                              size: 40,
                              color: Colors.blue,
                            )),
                        selectIcon(
                            i1: const Icon(
                              Icons.arrow_back_ios_new,
                              size: 40,
                              color: Colors.blue,
                            )),
                        selectIcon(
                            i1: const Icon(
                              Icons.arrow_forward_ios,
                              size: 40,
                              color: Colors.blue,
                            )),
                        selectIcon(
                            i1: const Icon(
                              Icons.alarm,
                              size: 40,
                              color: Colors.blue,
                            )),
                        selectIcon(
                            i1: const Icon(
                              Icons.call,
                              size: 40,
                              color: Colors.blue,
                            )),
                        selectIcon(
                            i1: const Icon(
                              Icons.search,
                              size: 40,
                              color: Colors.blue,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Container ofText({required t1}) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(15),
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Text(
        '$t1',
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xff717171),
          fontSize: 25,
        ),
      ),
    );
  }

  Container colorBox({required c1}) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(15),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: c1,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
    );
  }
  Container selectIcon({required i1}) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(15),
      height: 100,
      width: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xff717171),
            spreadRadius: 2,
            blurRadius: 6,
          ),
        ],
      ),
      child: i1,
    );
  }
}