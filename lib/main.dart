import 'package:flutter/material.dart';
import 'package:meet_annabel/Screens/education.dart';
import 'package:meet_annabel/Screens/settings.dart';
import 'package:meet_annabel/Screens/skills.dart';

import 'Screens/about _me.dart';
import 'Screens/experience.dart';
import 'Screens/projects.dart';
import 'const/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meet Annabel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
            .copyWith(secondary: Colors.white70),
        accentColor: Colors.amber,
      ),
      home: const AboutMe(),
      routes: {
        aboutMeRoute: (context) => const AboutMe(),
        educationRoute: (context) => const Education(),
        experienceRoute: (context) => const Experience(),
        projectRoute: (context) => const Projects(),
        settingsRoute: (context) => const Settings(),
        skillsRoute: (context) => const Skills(),
        
      },
    );
  }
}
