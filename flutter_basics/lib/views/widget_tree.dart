import 'package:flutter/material.dart';
import 'package:flutter_basics/data/notifiers.dart';
import 'package:flutter_basics/views/pages/home_page.dart';
import 'package:flutter_basics/views/pages/profile_page.dart';
import 'package:flutter_basics/views/pages/setting_page.dart';
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
        actions: [
          IconButton(
              onPressed: (){
                isDarkThemeNotifier.value = !isDarkThemeNotifier.value;
              },
              icon:ValueListenableBuilder(
                  valueListenable: isDarkThemeNotifier,
                  builder: (context, isDarkMode, child){
                  return Icon(isDarkMode ? Icons.dark_mode:Icons.light_mode);
              })),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SettingPage(title: "Settings");
            }),);
          }, icon: Icon(Icons.settings))
        ],
      ),
      body: ValueListenableBuilder(valueListenable: selectedPageNotifier, builder:(context, selectedPage, child){
        return pages.elementAt(selectedPage);
      }),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}