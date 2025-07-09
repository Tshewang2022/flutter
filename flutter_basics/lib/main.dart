
import 'package:flutter/material.dart';
import 'package:flutter_basics/data/notifiers.dart';
import 'package:flutter_basics/views/pages/welcome_page.dart';

void main(){
  runApp(const MyApp());
}
// i am not here for learning, i am here for developing the world best app
// as simple as that
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){

    // we are using the material design theme
    return ValueListenableBuilder(
        valueListenable: isDarkThemeNotifier,
        builder: (context, isDarkMode, child){
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  useMaterial3: true,
                  colorScheme: ColorScheme.fromSeed(
                      seedColor: Colors.teal,
                      brightness:isDarkMode? Brightness.light:Brightness.dark

                  )
              ),
              // skeleton of the app
              home: WelcomePage()
          );
        });
  }
}
