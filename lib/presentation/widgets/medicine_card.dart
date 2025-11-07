import 'package:flutter/material.dart';

class MedicineCard extends StatelessWidget {
  final String name;
  final String emoji;
  final String time;

  const MedicineCard({
    super.key,
    required this.name,
    required this.emoji,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(emoji, style: const TextStyle(fontSize: 28)),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              time,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
