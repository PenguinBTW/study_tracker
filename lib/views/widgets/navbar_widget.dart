import 'package:flutter/material.dart';
import 'package:study_tracker/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: selectedPageNotifier, builder: (context, selectedPage, child) {
      return NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onDestinationSelected: (int value) {
          selectedPageNotifier.value = value;
        },
        selectedIndex: selectedPage,
      );
    },);
  }
}