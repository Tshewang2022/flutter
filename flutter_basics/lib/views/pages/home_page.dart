import 'package:flutter/material.dart';
import 'package:flutter_basics/data/constants.dart';
import 'package:flutter_basics/views/hero.dart';

//today will be engage into more of the advance concepts
// dealing with the data transfer from one screen to another screen
class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.all(20.0),
    child:SingleChildScrollView(
      child:Column(
        children: [
          HeroWidget(title: "Flutter map",),
          Container(padding: EdgeInsets.symmetric(vertical: 20.0),
            width: double.infinity,
            child: Card(
                child: Padding(padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Basic layout", style: KTextStyle.titleTealText),
                      Text("The description of this", style: KTextStyle.descriptionText)
                    ],
                  ),)
            ),)
        ],
      ),
    )

    );
  }
}