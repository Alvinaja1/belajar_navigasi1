import 'package:flutter/material.dart';

class thirdscreen extends StatelessWidget {
  const thirdscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LAYAR KETIGA",
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
                Navigator.pop(context,'data dari layar ketiga');
              },
              child: Text("KEMBALI"))
        ],
      )),
    );
  }
}
