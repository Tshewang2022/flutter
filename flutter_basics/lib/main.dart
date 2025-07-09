
import 'package:flutter/material.dart';
import 'package:flutter_basics/data/constants.dart';
import 'package:flutter_basics/data/notifiers.dart';
import 'package:flutter_basics/views/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(const MyApp());
}
// i am not here for learning, i am here for developing the world best app
// as simple as that
class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState()=> _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  void initState() {
    initThemeMode();
    super.initState();
  }

  void initThemeMode() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
      final bool? repeat = prefs.getBool(KConstants.themeModeKey);
      isDarkThemeNotifier.value = repeat ?? false;
  }
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
