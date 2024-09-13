import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../model/model.dart';

class HomeVM extends BaseViewModel {
  final formKey = GlobalKey<FormState>();
  List<Person> users = [];
  bool isOn = false;
  String? name;
  int? age;

  void onChangeLight() {
    isOn = !isOn;
    notifyListeners();
  }

  void onSaveData() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      users.add(Person(name!, age!));
      notifyListeners();
    }
  }
}
