import 'package:flutter/material.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Lugares'),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
