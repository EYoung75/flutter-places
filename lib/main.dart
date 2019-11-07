import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "./providers/placeProvider.dart";
import "./screens/placesScreen.dart";
import "./screens/addPlaceScreen.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Great Places",
        theme:
            ThemeData(primarySwatch: Colors.indigo, accentColor: Colors.amber),
        home: PlacesList(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
        },
      ),
    );
  }
}
