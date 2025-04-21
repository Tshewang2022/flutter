import 'package:flutter/material.dart';
import 'package:foundations/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build wow i just love how the flutter app works, everthing is a widgets
    return Scaffold(
      appBar: AppBar(title: Text('First page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            /** will navigate the second page **/
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
          child: Text('Go to second Page'),
        ),
      ),
    );
  }
}
