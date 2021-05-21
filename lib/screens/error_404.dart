import 'package:flutter/material.dart';

class Error404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("ERROR 404, NOT FOUND!"),
        ),
        body: Center(
          child: Text('ERROR 404, NOT FOUND!'),
        ),
      ),
    );
  }
}
