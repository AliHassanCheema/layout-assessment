import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../common/text_field/text_field_vu.dart';
import '../home_vm.dart';
import '../widgets.dart';

Widget mobileFields(HomeVM viewModel) {
  return Column(
    children: [
      CustomTextFieldVU(
          hintText: 'Write Name',
          onGetValue: (v) {
            viewModel.name = v;
          }),
      spaceY(space: 20),
      CustomTextFieldVU(
          hintText: 'Write Age',
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          onGetValue: (v) {
            viewModel.age = int.tryParse(v);
          })
    ],
  );
}

Widget mobileTopView(BoxConstraints constraints) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      imageSection(),
      spaceX(space: 20),
      textSection(constraints),
    ],
  );
}
