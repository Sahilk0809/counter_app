import 'package:flutter/Material.dart';

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

Container iconBox({required IconData icon}) {
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
    child: Icon(icon,size: 40,),
  );
}

List colorList = [
  Colors.yellow,
  Colors.blue,
  Colors.purple,
  Colors.red,
  Colors.grey
];
Color selectColor = Colors.black;

IconData selectIcons = Icons.arrow_back_ios_new;
List iconList = [
    Icons.add,
    Icons.stop,
    Icons.arrow_back_ios_new,
    Icons.arrow_forward_ios,
    Icons.alarm,
    Icons.call,
    Icons.search,
];