import 'package:flutter/material.dart';
import 'package:classroom/domain/classroom/classroom.dart';

import '../../../domain/student_model/student.dart';

class ClassroomItem extends StatelessWidget {
  const ClassroomItem(
      {super.key, required this.classroom, this.onTap});
  final Classroom classroom;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        color: Color(0xffFFE0DD),
        child: ListTile(
          onTap: onTap,
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Text("${classroom.id}")),
          title: Text("${classroom.name}",
              style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("${classroom.layout}"),
          trailing: Text("Seats:${classroom.size}"),
        ),
      ),
    );
  }
}
