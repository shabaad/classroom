import 'package:flutter/material.dart';
import 'package:classroom/provider/classroom_provider.dart';
import 'package:classroom/provider/student_provider.dart';
import 'package:classroom/provider/subject_provider.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import 'domain/dependency_injection/injection.dart';
import 'routes/app_routes.dart';
import 'routes/route_constants.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => getIt<StudentProvider>()),
    ChangeNotifierProvider(create: (context) => getIt<SubjectProvider>()),
    ChangeNotifierProvider(create: (context) => getIt<ClassroomProvider>()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Classroom',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      onGenerateRoute: AppRoutes.generateRoute,
      initialRoute: RouteConstants.home,
    );
  }
}
