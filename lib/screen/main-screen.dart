import 'package:flutter/material.dart';
import 'package:flutter_art_app/screen/main-hand-art.dart';
import 'package:flutter_art_app/screen/main-photo-art.dart';
import 'package:flutter_art_app/screen/main-digital-art.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final PageController controller = PageController();
    return Scaffold(
      body: PageView(
        /// [PageView.scrollDirection] defaults to [Axis.horizontal].
        /// Use [Axis.vertical] to scroll vertically.
        // controller: controller,
        children: [
          MainHandArt(),
          MainPhotoArt(),
          MainDigitalArt(),
        ],
      ),
    );
  }
}
