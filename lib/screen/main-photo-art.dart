import 'dart:math';

import 'package:flutter/material.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
import 'package:flutter_art_app/models/hand-art-model.dart';

class MainPhotoArt extends StatelessWidget {
  final _scrollController = FixedExtentScrollController();
  // int? da = listKulinerNusantara.length;
  static const double _itemHeight = 170;
  static const int _itemCount = 7; // Tinjau Lagi buat deklarasi static const
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ClickableListWheelScrollView(
          scrollController: _scrollController,
          itemHeight: _itemHeight,
          itemCount: _itemCount,
          onItemTapCallback: (index) {
            print("onItemTapCallback index: $index");
            print("x = $x");
          },
          child: ListWheelScrollView(
            controller: _scrollController,
            itemExtent: _itemHeight,
            physics: FixedExtentScrollPhysics(),
            overAndUnderCenterOpacity: 0.5,
            diameterRatio: 1.5,
            perspective: 0.002,
            // offAxisFraction: -0.5,
            children: ButtonList,
          ),
        ),
      ),
    );
  }
}

class randomIntLoop {
  // static int x = 0;
  static int getRandomInt() {
    x = Random().nextInt(handArtCollection.length);
    return x;
  }
}

var x = Random().nextInt(handArtCollection.length);
var y = randomIntLoop.getRandomInt();

List<Widget> ButtonList = [
  for (var i = 0; i < 10; i++)
    Image.asset(handArtCollection[randomIntLoop.getRandomInt()].imageTitles),
];
