import 'package:flutter/material.dart';
import 'package:flutter_art_app/screen/main/main-hand-art.dart';
import 'package:flutter_art_app/screen/main/main-photo-art.dart';
import 'package:flutter_art_app/screen/main/main-digital-art.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final PageController controller = PageController();
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return MobileMainScreen();
          } else if (constraints.maxWidth <= 1200) {
            return MidMainScreen();
          } else {
            return WideMainScreen();
          }
        },
      ),
    );
  }
}

class MobileMainScreen extends StatelessWidget {
  const MobileMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        /// [PageView.scrollDirection] defaults to [Axis.horizontal].
        /// Use [Axis.vertical] to scroll vertically.
        // controller: controller,
        children: [
          MainHandArt(
            listSelector: 0,
          ),
          MainPhotoArt(
            listSelector: 0,
          ),
          MainDigitalArt(
            listSelector: 0,
          ),
        ],
      ),
    );
  }
}

class MidMainScreen extends StatelessWidget {
  const MidMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: MainHandArt(
          listSelector: 1,
        )),
        Expanded(
            child: MainPhotoArt(
          listSelector: 1,
        )),
        Expanded(
            child: MainDigitalArt(
          listSelector: 1,
        )),
      ],
    );
  }
}

class WideMainScreen extends StatelessWidget {
  const WideMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: MainHandArt(
          listSelector: 2,
        )),
        Expanded(
            child: MainPhotoArt(
          listSelector: 2,
        )),
        Expanded(
            child: MainDigitalArt(
          listSelector: 2,
        )),
      ],
    );
  }
}
