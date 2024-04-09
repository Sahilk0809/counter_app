import 'package:flutter/Material.dart';

Container container({required index}) {
  return Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    height: 100,
    width: double.infinity,
    decoration: BoxDecoration(
      color :  (index % 2==0)? const Color(0xff75E2FF): const Color(0xff5689C0),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    ),
    child: Text(
      '$index', style: const TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.w600,
    ),
    ),
  );
}