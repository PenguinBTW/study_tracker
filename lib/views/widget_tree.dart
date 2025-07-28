import 'package:flutter/material.dart';
import 'package:study_tracker/data/notifiers.dart';
import 'package:study_tracker/views/pages/home_page.dart';
import 'package:study_tracker/views/pages/profile_page.dart';
import 'package:study_tracker/views/widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage()
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Study Tracker'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            }, icon: ValueListenableBuilder(valueListenable: isDarkModeNotifier, builder: (context, isDarkMode, child) {
              return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
            },))
          ],
        ),
        bottomNavigationBar: NavbarWidget(),
        body: ValueListenableBuilder(valueListenable: selectedPageNotifier, builder: (context, value, child) {
          return pages.elementAt(value);
        },),
      );
  }
}