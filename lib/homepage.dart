import 'package:flutter/material.dart';

class Buttonclick extends StatefulWidget {
  const Buttonclick({super.key});

  @override
  State<Buttonclick> createState() => _ButtonclickState();
}

class _ButtonclickState extends State<Buttonclick> {
  String Myname = '';
  void displayMyName() {
    setState(() {
      Myname = 'Niyas';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Button Click Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: displayMyName,
              child: Text('Click here'),
            ),
            SizedBox(height: 20),
            Text(
              Myname,
            ),
          ],
        ),
      ),
    );
  }
}
