import 'package:flutter/material.dart';

class fourthscreen extends StatelessWidget {
  const fourthscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LAYAR KEEMPAT",
          style: TextStyle(color: Colors.green, fontSize: 30.0),
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("KEMBALI"))
        ],
      )),
    );
  }
}
