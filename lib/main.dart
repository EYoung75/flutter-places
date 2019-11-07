import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "./providers/placeProvider.dart";
import "./screens/placesScreen.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: "Great Places",
        theme:
            ThemeData(primarySwatch: Colors.indigo, accentColor: Colors.amber),
        home: PlacesList(),
      ),
    );
  }
}
