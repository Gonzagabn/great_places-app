import 'package:flutter/material.dart';
import 'package:great_places/widgets/image_input.dart';

class PlaceFormScreen extends StatefulWidget {
  @override
  _PlaceFormScreenState createState() => _PlaceFormScreenState();
}

class _PlaceFormScreenState extends State<PlaceFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Lugar'),
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Título',
                ),
              ),
              SizedBox(height: 10),
              ImageInput(),
            ],
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.add, color: Colors.black),
            label: Text('Adicionar', style: TextStyle(color: Colors.black)),
            style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Theme.of(context).accentColor)),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
