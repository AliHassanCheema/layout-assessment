import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../common/text_field/text_field_vu.dart';
import '../home_vm.dart';
import '../widgets.dart';

Widget webFields(HomeVM viewModel) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
          child: CustomTextFieldVU(
              hintText: 'Write Name',
              onGetValue: (v) {
                viewModel.name = v;
              })),
      const SizedBox(width: 20),
      Expanded(
          child: CustomTextFieldVU(
              hintText: 'Write Age',
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              onGetValue: (v) {
                viewModel.age = int.tryParse(v);
              }))
    ],
  );
}

Row webTopView(BoxConstraints constraints) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(child: textSection(constraints)),
      const SizedBox(width: 20),
      Expanded(child: imageSection())
    ],
  );
}
