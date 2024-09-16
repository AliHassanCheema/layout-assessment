import 'package:flutter/material.dart';
import 'package:layout_assessment/home/ui/home_vm.dart';
import 'package:stacked/stacked.dart';

import 'mobile/home_mobile_vu.dart';
import 'web/home_web_vu.dart';
import 'widgets.dart';

class HomeVU extends StackedView<HomeVM> {
  const HomeVU({super.key});
  @override
  Widget builder(BuildContext context, HomeVM viewModel, Widget? child) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        debugPrint('$constraints');
        bool isMobile = constraints.maxWidth <= 880;
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(isMobile ? 16.0 : 50),
            child: Column(
              children: [
                isMobile ? mobileTopView(constraints) : webTopView(constraints),
                spaceY(space: constraints.maxHeight * 0.02),
                bulbButton(viewModel),
                spaceY(space: constraints.maxHeight * 0.02),
                if (viewModel.isOn) ...[
                  formFields(viewModel, isMobile),
                  spaceY(space: constraints.maxHeight * 0.02),
                  submitButton(viewModel),
                  spaceY(space: constraints.maxHeight * 0.02),
                ],
                usersList(context, viewModel)
              ],
            ),
          ),
        );
      }),
    );
  }

  @override
  HomeVM viewModelBuilder(BuildContext context) {
    return HomeVM();
  }
}
