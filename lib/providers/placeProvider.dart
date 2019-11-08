import 'dart:io';

import 'package:flutter/cupertino.dart';
import "../models/place.dart";

class GreatPlaces with ChangeNotifier {
  List<Place> _places = [];

  List<Place> get items {
    return [..._places];
  }

  void addPlace(String title, File image) {
    final newPlace = Place(
        id: DateTime.now().toString(),
        img: image,
        title: title,
        location: null);
    _places.add(newPlace);
    notifyListeners();
  }
}
