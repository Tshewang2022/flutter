import 'package:flutter/material.dart';
import 'package:flutter_basics/views/pages/home_page.dart';
import 'package:flutter_basics/views/pages/profile_page.dart';
import 'package:flutter_basics/views/widgets/navbar_widget.dart';

List<Widget> pages =[
  HomePage(),
  ProfilePage()
];

class WidgetTree extends StatelessWidget{
  const WidgetTree({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter app"),
      ),
      body: pages.elementAt(1),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}