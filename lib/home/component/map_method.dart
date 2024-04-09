import 'package:flutter/Material.dart';

Container row({required text, required i1}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    height: 100,
    width: 448,
    color: Colors.white,
    child: Row(
      children: [
        const SizedBox(width: 20),
        Text(
          text,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(flex: 1),
        i1,
        SizedBox(width: 10),
      ],
    ),
  );
}