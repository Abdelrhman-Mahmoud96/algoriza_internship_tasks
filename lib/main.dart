import 'package:flutter/material.dart';
import 'package:internship_task1/route/route_generator.dart';
import 'package:internship_task1/screens/boarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task 1',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RouteGenerator.boardingPage,
      home: const BoardingPage(),
    );
  }
}
