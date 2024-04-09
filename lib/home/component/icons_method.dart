import 'package:flutter/Material.dart';

SingleChildScrollView scrollRow(
    {required i1, required i2, required i3, required i4}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        icon(i1: i1),
        icon(i1: i2),
        icon(i1: i3),
        icon(i1: i4),
      ],
    ),
  );
}
Container icon({required i1}) {
  return Container(
    margin: const EdgeInsets.all(10),
    width: 120,
    height: 120,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: Colors.grey.shade300,
    ),
    child: i1,
  );
}