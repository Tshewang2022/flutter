import 'package:flutter/material.dart';
import 'package:flutter_basics/views/hero.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.all(20.0),
    child: Column(
      children: [
        HeroWidget(),
        Container(padding: EdgeInsets.symmetric(vertical: 20.0),
        width: double.infinity,
        child: Card(
          child: Padding(padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Basic layout"),
              Text("The description of this")
            ],
          ),)
        ),)
      ],
    ),
    );
  }
}