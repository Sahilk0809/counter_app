import 'Package:flutter/Material.dart';
import 'package:flutter/material.dart';
import 'home/component/icons_method.dart';

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
            backgroundColor: Colors.white70,
            centerTitle: true,
            leading: const Icon(
              Icons.account_circle_sharp,
              size: 30,
            ),
            title: const Text(
              'Icons',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          body: Align(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  scrollRow(
                      i1: const Icon(
                        Icons.add,
                        size: 35,
                      ),
                      i2: const Icon(
                        Icons.media_bluetooth_on,
                        size: 35,
                      ),
                      i3: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 35,
                      ),
                      i4: const Icon(
                        Icons.arrow_forward_ios,
                        size: 35,
                      )),
                  // scrollRow(),
                  scrollRow(
                    i1: const Icon(
                      Icons.verified_user_rounded,
                      size: 35,
                    ),
                    i2: const Icon(
                      Icons.account_circle_outlined,
                      size: 35,
                    ),
                    i3: const Icon(
                      Icons.sync,
                      size: 35,
                    ),
                    i4: const Icon(
                      Icons.close,
                      size: 35,
                    ),
                  ),
                  scrollRow(
                    i1: const Icon(
                      Icons.call,
                      size: 35,
                    ),
                    i2: const Icon(
                      Icons.more_vert,
                      size: 35,
                    ),
                    i3: const Icon(
                      Icons.arrow_circle_down_rounded,
                      size: 35,
                    ),
                    i4: const Icon(
                      Icons.play_arrow,
                      size: 35,
                    ),
                  ),
                  scrollRow(
                    i1: const Icon(
                      Icons.pause,
                      size: 35,
                    ),
                    i2: const Icon(
                      Icons.stop,
                      size: 35,
                    ),
                    i3: const Icon(
                      Icons.trip_origin,
                      size: 35,
                    ),
                    i4: const Icon(
                      Icons.search,
                      size: 35,
                    ),
                  ),
                  scrollRow(
                    i1: const Icon(
                      Icons.app_blocking,
                      size: 35,
                    ),
                    i2: const Icon(
                      Icons.apps,
                      size: 35,
                    ),
                    i3: const Icon(
                      Icons.schedule,
                      size: 35,
                    ),
                    i4: const Icon(
                      Icons.school,
                      size: 35,
                    ),
                  ),
                  scrollRow(
                    i1: const Icon(
                      Icons.do_not_disturb_on_total_silence,
                      size: 35,
                    ),
                    i2: const Icon(
                      Icons.currency_exchange,
                      size: 35,
                    ),
                    i3: const Icon(
                      Icons.contact_support,
                      size: 35,
                    ),
                    i4: const Icon(
                      Icons.accessibility,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
