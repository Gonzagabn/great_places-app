import 'package:flutter/material.dart';
import 'package:great_places/providers/great_places.dart';
import 'package:great_places/utils/app_routes.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Lugares'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.PLACE_FORM);
            },
          )
        ],
      ),
      body: Consumer<GreatPlaces>(
        child: Center(
          child: Text('Nenhum local cadastrado!'),
        ),
        builder: (context, greatPlaces, child) => greatPlaces.itemsCount == 0
            ? child
            : ListView.builder(
                itemCount: greatPlaces.itemsCount,
                itemBuilder: (context, index) => Text('Item'),
              ),
      ),
    );
  }
}
