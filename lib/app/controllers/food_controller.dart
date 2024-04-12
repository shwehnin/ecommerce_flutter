import 'dart:math';
import 'package:get/get.dart';
import 'package:ecomly_flutter/app/models/additives_model.dart';

class FoodController extends GetxController {
  String _category = '';
  String get category => _category;

  set setCategory(String newValue) {
    _category = newValue;
    print("Category is " + category);
  }

  RxList<String> _types = <String>[].obs;

  RxList<String> get types => _types;

  set setTypes(String newValue) {
    _types.add(newValue);
  }

  int generateId() {
    int min = 0;
    int max = 10000;

    final _random = Random();
    return min + Random().nextInt(max - min);
  }

  RxList<AdditiveModel> _addivitesList = <AdditiveModel>[].obs;

  RxList<AdditiveModel> get addivitesList => _addivitesList;

  set setAddivitesList(AdditiveModel newValue) {
    _addivitesList.add(newValue);
  }

  void clearAddivites() {
    _addivitesList.clear();
  }
}
