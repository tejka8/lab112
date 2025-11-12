import 'package:flutter/material.dart';
import '../models/exam_model.dart';
import '../screens/details.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;

  const ExamCard({required this.exam});

  @override
  Widget build(BuildContext context) {
    bool isPast = exam.date_time.isBefore(DateTime.now());

    return Card(
      color: isPast ? Colors.red.shade200 : Colors.lightBlue[100],
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        title: Text(exam.name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.calendar_today, size: 16),
                SizedBox(width: 4),
                Text("${exam.date_time.day}.${exam.date_time.month}.${exam.date_time.year}"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.access_time, size: 16),
                SizedBox(width: 4),
                Text("${exam.date_time.hour}:${exam.date_time.minute.toString().padLeft(2,'0')}"),
              ],
            ),
            Row(
              children: [
                Icon(Icons.meeting_room, size: 16),
                SizedBox(width: 4),
                Text(exam.rooms.join(", ")),
              ],
            ),
          ],
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => ExamDetailScreen(exam: exam)),
          );
        },
      ),
    );
  }
}
