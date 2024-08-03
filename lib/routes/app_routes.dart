import 'package:flutter/material.dart';
import 'package:classroom/routes/route_constants.dart';
import 'package:classroom/screens/classroom/classroom_list_screen.dart';
import 'package:classroom/screens/classroom/classroom_screen.dart';
import 'package:classroom/screens/student/student_screen.dart';
import 'package:classroom/screens/student/students_list_screen.dart';
import 'package:classroom/screens/subject/subject_list_screen.dart';
import 'package:classroom/screens/subject/subject_screen.dart';

import '../screens/home/home_screen.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final page = switch (settings.name) {
      RouteConstants.home => const HomeScreen(),
      RouteConstants.classroomList => const ClassroomListScreen(),
      RouteConstants.classroom => const ClassroomScreen(),
      RouteConstants.students => const StudentScreen(),
      RouteConstants.studentsList => const StudentsListScreen(),
      RouteConstants.subjects => const SubjectScreen(),
      RouteConstants.subjectsList => const SubjectListScreen(),
      _ => throw Exception('Invalid route')
    };
    debugPrint('<>route ${settings.name}');
    return MaterialPageRoute(
      builder: (context) => page,
    );
  }
}
