import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:layout_assessment/common/text_field/text_field_vm.dart';
import 'package:stacked/stacked.dart';

class CustomTextFieldVU extends StackedView<CustomTextFieldVM> {
  const CustomTextFieldVU({
    super.key,
    this.hintText = '',
    this.inputFormatters,
    required this.onGetValue,
  });
  final String hintText;
  final Function(String value) onGetValue;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget builder(
      BuildContext context, CustomTextFieldVM viewModel, Widget? child) {
    return TextFormField(
      controller: viewModel.controller,
      inputFormatters: inputFormatters,
      validator: viewModel.validator,
      onSaved: (newValue) {
        onGetValue(newValue!);
        viewModel.controller.clear();
      },
      decoration: InputDecoration(
          hintText: hintText, border: const OutlineInputBorder()),
    );
  }

  @override
  CustomTextFieldVM viewModelBuilder(BuildContext context) {
    return CustomTextFieldVM();
  }
}
