import 'package:flutter/material.dart';

import '../../../domain/student_model/student.dart';

class StudentItem extends StatelessWidget {
  const StudentItem({super.key, required this.student, this.onTap});
  final Student student;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        color: Color(0xffAAC9BF),
        child: ListTile(
          onTap: onTap,
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Text("${student.id}")),
          title: Text("${student.name}",
              style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("${student.email}"),
          trailing: Text("Age:${student.age}"),
          leadingAndTrailingTextStyle: TextStyle(fontSize: 12,color: Colors.black),
        ),
      ),
    );
  }
}
