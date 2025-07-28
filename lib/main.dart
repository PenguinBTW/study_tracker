import 'package:flutter/material.dart';
import 'package:study_tracker/data/notifiers.dart';
import 'package:study_tracker/views/widget_tree.dart';

void main() {
  runApp(const StudyApp());
}

class StudyApp extends StatefulWidget {
  const StudyApp({super.key});

  @override
  State<StudyApp> createState() => _MyAppState();
}

class _MyAppState extends State<StudyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: isDarkModeNotifier, builder: (context, isDarkMode, child) {
      return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.grey,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,),
        
      ),
      home: WidgetTree()
    );
    },);
  }
}
