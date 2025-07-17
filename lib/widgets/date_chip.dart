import 'package:flutter/material.dart';

class DateChip extends StatelessWidget {
  final String day;
  final String date;
  final bool selected;
  final VoidCallback onTap;

  const DateChip({
    super.key,
    required this.day,
    required this.date,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: selected ? Color(0xFF0F8181) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow:
              selected
                  ? [const BoxShadow(color: Colors.black12, blurRadius: 4)]
                  : [BoxShadow(color: Colors.grey.shade300, blurRadius: 2)],
        ),
        child: Column(
          children: [
            Text(
              day,
              style: TextStyle(color: selected ? Colors.white : Colors.black),
            ),
            Text(
              date,
              style: TextStyle(color: selected ? Colors.white : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
