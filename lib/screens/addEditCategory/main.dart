import 'package:flutter/material.dart';

class AddEdit extends StatelessWidget {
  static const route = 'addEdit';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () => Navigator.of(context).pushReplacementNamed('/'),
        ),
      ),
      body: Container(
        child: Text('addedit'),
      ),
    );
  }
}
