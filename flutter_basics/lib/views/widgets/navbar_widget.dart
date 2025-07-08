import 'package:flutter/material.dart';
import 'package:flutter_basics/data/notifiers.dart';

class NavbarWidget extends StatefulWidget{
  @override
  State<NavbarWidget> createState()=> _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget>{
  int currentIndex =0;
  @override
  Widget build(BuildContext context){
    return ValueListenableBuilder(valueListenable: selectedPageNotifier, builder: (context, selectedPage, child){
      NavigationBar(
        destinations:[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
              icon: Icon(Icons.person),
              label: "Profile")
        ],
        onDestinationSelected: (int value){
        },
        selectedIndex: selectedPage,
      )
    });
  }
}