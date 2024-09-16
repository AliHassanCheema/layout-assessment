import 'package:flutter/material.dart';

import '../../common/heading_text/heading_text_vu.dart';
import 'home_vm.dart';
import 'mobile/home_mobile_vu.dart';
import 'web/home_web_vu.dart';

Widget spaceY({double? space}) => SizedBox(height: space);
Widget spaceX({double? space}) => SizedBox(width: space);
Widget imageSection() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Image.network(
      'https://strapi.dhiwise.com/uploads/crafting_a_captivating_flutter_splash_screen_igniting_visual_appealog_image_6535f1634dc09_80e4a43a6c.webp',
    ),
  );
}

Widget textSection(BoxConstraints constraints) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Master Flutter on the Web'.toUpperCase(),
        maxLines: 2,
        style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w900),
      ),
      HeadingText(
          maxWidth: constraints.maxWidth,
          title:
              '- Advance Nested Layout\n- Production practices for Web\n- Complete guide on building forms\n- Build a real-world example with Stacked'),
    ],
  );
}

Widget usersList(BuildContext context, HomeVM viewModel) {
  return SizedBox(
    height: MediaQuery.sizeOf(context).height / 2,
    child: ListView.builder(
        itemCount: viewModel.users.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    viewModel.users[index].name,
                    overflow: TextOverflow.ellipsis,
                  )),
                  const SizedBox(width: 20),
                  Text(viewModel.users[index].age.toString())
                ],
              ),
            ),
          );
        }),
  );
}

Widget bulbButton(HomeVM viewModel) {
  return IconButton(
      onPressed: () {
        viewModel.onChangeLight();
      },
      icon: Icon(Icons.lightbulb,
          size: 100, color: viewModel.isOn ? Colors.yellow[400] : Colors.grey));
}

Widget submitButton(HomeVM viewModel) {
  return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white),
          onPressed: () {
            viewModel.onSaveData();
          },
          child: const Text('Save')));
}

Widget formFields(HomeVM viewModel, bool isMobile) {
  return Form(
    key: viewModel.formKey,
    child: isMobile ? mobileFields(viewModel) : webFields(viewModel),
  );
}
