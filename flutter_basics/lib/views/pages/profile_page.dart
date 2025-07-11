import 'package:flutter/material.dart';
import 'package:flutter_basics/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.all(20.0),
    child: Column(
      children: [
        ListTile(
          title: Text("logout"),
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return WelcomePage();
            }));
          },
        )
      ],
    ),);
  }
}
