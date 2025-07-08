import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/navbar_widget.dart';

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
      home:MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState()=> _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  // We can store the var here
  int currentIndex =0;
  @override
  Widget build(BuildContext context){
    // and here
    return Scaffold(
      // kind of like the header of the word document
      appBar: AppBar(
        title: Text(title!),
        centerTitle: true,
      ),
      body: currentIndex==0?Center(child: Text("1")):Center(child: Text("2")),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("Pressing the button");
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: NavbarWidget()

    );
  }
}