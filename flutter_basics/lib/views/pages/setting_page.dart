import 'package:flutter/material.dart';
class SettingPage extends StatefulWidget{
  const SettingPage({super.key, required this.title});
final String title;
  @override
  State<SettingPage> createState()=> _SettingPage();
}
// arrow function inside the dart
class _SettingPage extends State<SettingPage>{
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        // this can diable the return back button
        // automaticallyImplyLeading: false,

      ),
      body: SingleChildScrollView(
        child:Padding(padding: const EdgeInsets.all(20.0),
            child:Column(
              children: [
                TextField(
                  controller: controller,
                  decoration: InputDecoration(border: OutlineInputBorder()
                  ),
                  onEditingComplete: (){
                    setState(() {

                    });
                  },
                ),
                Text(controller.text),
                Checkbox.adaptive(value: isChecked, onChanged: (bool ? value){
                  setState(() {
                    isChecked = value;
                  });
                }),
                Divider(),
                CheckboxListTile(value: isChecked, title:Text("Click me"),onChanged: (bool ? value){
                  setState(() {
                    isChecked = value;
                  });
                }),
                SwitchListTile.adaptive(value: isSwitched, onChanged: (bool value){
                  setState(() {
                    isSwitched = value;
                  });
                }
                ),
                Slider.adaptive(value: sliderValue, onChanged: (double value){
                  setState(() {
                    sliderValue = value;
                  });
                }),
                InkWell(
                  splashColor: Colors.teal,
                  onTap: (){
                    print('image selected');
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.white12,
                  ),
                ),
                ElevatedButton(onPressed:(){print("Clicking the button");},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, foregroundColor: Colors.white),
                    child: Text("Click me"))
              ],
            )
        ),
      ),
    );

  }
}