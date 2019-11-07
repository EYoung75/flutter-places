import 'package:flutter/cupertino.dart';
import "../models/place.dart";

class GreatPlaces with ChangeNotifier {
  List<Place> _places = [];

  List<Place> get items {
    return [..._places];
  }
}