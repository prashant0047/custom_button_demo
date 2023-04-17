import 'package:custom_widget_demo/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 50,
              child: CustomButton(
                btnName: "Login",
                icon: Icon(Icons.lock),
                callback: () {
                  print("Logged in!!");
                },
                textStyle: TextStyle(fontSize: 20,color: Colors.white),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 150,
              height: 50,
              child: CustomButton(
                btnName: "Press",
                bgColor: Colors.orange,

                callback: () {
                  print("Play!!");
                },
                textStyle: TextStyle(fontSize: 20,color: Colors.white),
              ),
            ),
          ],
        )
      ),
    );
  }
}
