import 'package:flutter/material.dart';

class Details2Page extends StatelessWidget {
  const Details2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details 2"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: Text("Back"),
        ),
      ),
    );
  }
}
