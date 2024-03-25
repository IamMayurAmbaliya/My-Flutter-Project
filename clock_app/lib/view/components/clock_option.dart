import 'package:flutter/material.dart';

Widget ClockOptionTile({
  required String title,
  required bool val,
  required Function(bool) onChanged,
}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        Switch(
          value: val,
          onChanged: onChanged,
        ),
      ],
    ),
  );
}
