import 'package:belajar_navigasi1/secondscreen.dart';
import 'package:belajar_navigasi1/thirdscreen.dart';
import 'package:flutter/material.dart';

class firstscreen extends StatelessWidget {
  const firstscreen({super.key});

  Future<void> _navigateScreen(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => thirdscreen()));
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LAYAR PERTAMA"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          secondscreen(data: 'INI DATA DARI FIRST SCREEN')),
                );
              }),
              child: Text("firstscreen")),
          SizedBox(height: 10),
          ElevatedButton(
              onPressed: (() {
                _navigateScreen(context);
              }),
              child: Text("menuju layar ketiga")),
          SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/fourth');
              },
              child: Text("menuju layar keempat")),
        ],
      )),
    );
  }
}
