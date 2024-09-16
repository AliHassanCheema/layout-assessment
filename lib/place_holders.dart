import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: LayoutAssessment()));
}

class LayoutAssessment extends StatelessWidget {
  const LayoutAssessment({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Semantics(
          label: 'Layout Assessment',
          child: const ExcludeSemantics(
              child: SizedBox(child: Center(child: Text('dataa')))),
        ));
    // const Icon(Icons.add);
    // return //tps://strapi.dhiwise.com/uploads/crafting_a_captivating_flutter_splash_screen_igniting_visual_appealog_image_6535f1634dc09_80e4a43a6c.webp');
    // Align(
    //   alignment: Alignment.bottomRight,
    //   child: Container(width: 100, height: 100, color: Colors.green),
    // )
    // Image.network(
    //     'https://strapi.dhiwise.com/uploads/crafting_a_captivating_flutter_splash_screen_igniting_visual_appealog_image_6535f1634dc09_80e4a43a6c.webp'),
  }
}
