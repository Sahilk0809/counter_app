import 'Package:flutter/Material.dart';
import 'home/component/map_method.dart';

void main() {
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
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            centerTitle: true,
            leading: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            title: const Text(
              'Map',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          body: Align(
            child: Row(
              children: [
                Column(
                  children: [
                    row(
                        text: 'Exit',
                        i1: const Icon(
                          Icons.exit_to_app,
                          size: 35,
                        )),
                    row(
                        text: 'Play',
                        i1: const Icon(
                          Icons.play_arrow,
                          size: 35,
                        )),
                    row(
                        text: 'Pause',
                        i1: const Icon(
                          Icons.pause,
                          size: 35,
                        )),
                    row(
                        text: 'Stop',
                        i1: const Icon(
                          Icons.stop,
                          size: 35,
                        )),
                    row(
                        text: 'Close',
                        i1: const Icon(
                          Icons.close_rounded,
                          size: 35,
                        )),
                    row(
                        text: 'Delete',
                        i1: const Icon(
                          Icons.delete,
                          size: 35,
                        )),
                    row(
                        text: 'Email',
                        i1: const Icon(
                          Icons.email,
                          size: 35,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}