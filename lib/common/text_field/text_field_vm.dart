import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CustomTextFieldVM extends BaseViewModel {
  TextEditingController controller = TextEditingController();
  String? validator(String? v) {
    if (v == null || v.isEmpty) {
      return 'Please fill the field';
    }
    return null;
  }
}
