import 'package:flutter/material.dart';
import 'package:flutter_basics/views/hero.dart';
import 'package:flutter_basics/views/widget_tree.dart';

// the advance concept lies in adjusting app design according to the screen sizes
// Layout widget, and MediaQuery are the concepts that are related to the advance concepts
// api integration(what are the necessary package that we need to run api in our app)
// will be learning api integrations today;
// train your mental and visual frame
// structural training of the brain for the visual recognition
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController(text: '123');
  TextEditingController controllerPwd = TextEditingController(text: '456');
  String confirmedEmail = '123';
  String confirmedPassword = '456';

  @override
  // dispose
  void dispose() {
    controllerEmail.dispose();
    controllerPwd.dispose();
    super.dispose();
  }

  @override
  void initState() {
    print("initState");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                HeroWidget(title: "Login"),
                SizedBox(height: 20.0),
                TextField(
                  controller: controllerEmail,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(height: 20.0),
                TextField(
                  controller: controllerPwd,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onEditingComplete: () {
                    setState(() {});
                  },
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    onLoginPress();
                  },
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 40.0),
                  ),
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ),
      )

    );
  }

  void onLoginPress() {
    if (confirmedEmail == controllerEmail.text &&
        confirmedPassword == controllerPwd.text) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ), (route) => false,

      );
    }
  }
}
