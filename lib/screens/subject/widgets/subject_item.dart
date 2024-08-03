import 'package:flutter/material.dart';
import 'package:classroom/domain/subject/subject.dart';

import '../../../domain/student_model/student.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem({super.key, required this.subject, this.onTap});
  final Subject subject;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        color: Color(0xffD8EBFD),
        child: ListTile(
          onTap: onTap,
          trailing: Column(
            children: [
              CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Text("${subject.credits}",
                      style: TextStyle(fontSize: 20))),
              Flexible(
                child: const Text(
                  "Credits",
                ),
              )
            ],
          ),
          title: Text("${subject.name}",
              style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("${subject.teacher}"),
          leadingAndTrailingTextStyle:
              TextStyle(fontSize: 12, color: Colors.black),
        ),
      ),
    );
  }
}
