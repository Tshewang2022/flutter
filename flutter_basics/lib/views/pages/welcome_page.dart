import 'package:flutter/material.dart';
import 'package:flutter_basics/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget{
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
          child:SingleChildScrollView(
              child:Padding(padding: const EdgeInsets.all(20.0),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset('assets/lottie/animation1.json'),
                    FittedBox(
                      child:Text('Flutter Map',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50.0,
                              letterSpacing: 50.0)),
                    ),
                    SizedBox(height: 20.0),
                    FilledButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LoginPage();
                      }),);
                    },
                        style:FilledButton.styleFrom(minimumSize: Size(double.infinity, 40.0)),
                        child: Text('Get started')),
                  ],
                ),
              )
          )
      )



    );
  }
}