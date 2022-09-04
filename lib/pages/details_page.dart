import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  String param;
  DetailsPage({
    Key? key,
    required this.param,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var param = ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        title: Text("DetailsPage"),
      ),
      body: Center(
        child: Text(param),
      ),
    );
  }
}
