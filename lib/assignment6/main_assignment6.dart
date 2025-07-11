// lib/main.dart
import 'package:flutter/material.dart';

// Import each page class directly from its own file.
// Ensure your project name in pubspec.yaml is 'first_project'.
import 'package:my_dummy_projects/assignment6/login_page.dart' hide SignupPage, DashboardPage;
import 'package:my_dummy_projects/assignment6/signup_page.dart' hide DashboardPage;
import 'package:my_dummy_projects/assignment6/dashboard.dart' hide ProfilePage, CoursesPage;
import 'package:my_dummy_projects/assignment6/profile_page.dart';
import 'package:my_dummy_projects/assignment6/course_page.dart' hide CourseDetailsPage;
import 'package:my_dummy_projects/assignment6/course_details_page.dart'; // Corrected typo here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 6',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.brown),
      initialRoute: '/',
      routes: {
        // Add const if your page classes have const constructors.
        // This will be addressed after fixing ambiguous imports.
        '/': (context) => LoginPage(), // Temporarily remove const if LoginPage isn't const
        '/signup': (context) => SignupPage(),
        '/dashboard': (context) => DashboardPage(),
        '/profile': (context) => ProfilePage(),
        '/courses': (context) => CoursesPage(),
        '/courseDetails': (context) => CourseDetailsPage(),
      },
    );
  }
}