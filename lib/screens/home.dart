import 'package:flutter/material.dart';

import '../models/exam_model.dart';
import '../widgets/taskCard.dart';


class HomeScreen extends StatelessWidget {
  final List<Exam> exams = [
    Exam(name: "Discrete Mathematics", date_time: DateTime(2025, 11, 15, 10, 0), rooms: ["101", "102"]),
    Exam(name: "Object Oriented Programing", date_time: DateTime(2023, 11, 17, 14, 0), rooms: ["201"]),
    Exam(name: "Structural Programing", date_time: DateTime(2024, 11, 19, 9, 0), rooms: ["105"]),
    Exam(name: "Operating Systems", date_time: DateTime(2025, 11, 20, 13, 0), rooms: ["110"]),
    Exam(name: "Algorithms and Data Structures", date_time: DateTime(2025, 11, 22, 11, 0), rooms: ["202"]),
    Exam(name: "Computer Science", date_time: DateTime(2024, 11, 23, 15, 0), rooms: ["205"]),
    Exam(name: "Robotics", date_time: DateTime(2025, 10, 25, 12, 0), rooms: ["301"]),
    Exam(name: "Databases", date_time: DateTime(2025, 09, 27, 10, 0), rooms: ["303"]),
    Exam(name: "Web Programing", date_time: DateTime(2025, 11, 29, 14, 0), rooms: ["305"]),
    Exam(name: "Mobile Informatics Systems", date_time: DateTime(2025, 12, 1, 9, 0), rooms: ["401"]),
  ];

  @override
  Widget build(BuildContext context) {
    exams.sort((a, b) => a.date_time.compareTo(b.date_time));

    return Scaffold(
      appBar: AppBar(
        title: Text("Exams Schedule - 223095"),
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) {
          return ExamCard(exam: exams[index]);
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Total Exams: ${exams.length}",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
