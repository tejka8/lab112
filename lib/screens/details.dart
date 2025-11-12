import 'package:flutter/material.dart';
import '../models/exam_model.dart';

class ExamDetailScreen extends StatelessWidget {
  final Exam exam;

  const ExamDetailScreen({required this.exam});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final difference = exam.date_time.difference(now);
    final days = difference.inDays;
    final hours = difference.inHours % 24;

    return Scaffold(
      appBar: AppBar(title: Text(exam.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Date & time: ${exam.date_time.day}.${exam.date_time.month}.${exam.date_time.year} ${exam.date_time.hour}:${exam.date_time.minute.toString().padLeft(2,'0')}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              "Exam Rooms: ${exam.rooms.join(", ")}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              "Time untill: $days days, $hours hours",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
