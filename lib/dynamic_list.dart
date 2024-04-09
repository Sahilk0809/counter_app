import 'Package:flutter/Material.dart';
import 'home/component/dynamic_list_method.dart';

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
        appBar: AppBar(
          backgroundColor: Color(0xff244D61),
          centerTitle: true,
          leading: const Icon(
            Icons.menu,
            size: 25,
            color: Colors.white,
          ),
          title: const Text(
            'Dynamic List',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 25,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(
                l1.length, (index) => container(index: l1[index])),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  l1.add(l1.length);
                });
              },
              backgroundColor: const Color(0xff244D61),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  if(l1.length>1){
                    l1.removeAt(l1.length - 1);
                  }
                });
              },
              backgroundColor: const Color(0xff244D61),
              child: const Icon(
                Icons.remove,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
List l1 = [0];