
import 'package:flutter/material.dart';
import 'package:flutter_basics/views/widget_tree.dart';

void main(){
  runApp(const MyApp());
}
// i am not here for learning, i am here for developing the world best app
// as simple as that
String? title = "Flutter Map";
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){

    // we are using the material design theme
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark
        )
      ),
      // skeleton of the app
      home: WidgetTree()
    );
  }
}
