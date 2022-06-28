import 'dart:math';

import 'package:flutter/material.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
import 'package:flutter_art_app/models/hand-art-model.dart';
import 'package:flutter_art_app/screen/detail.dart';

class MainHandArt extends StatelessWidget {
  final _scrollController = FixedExtentScrollController();
  // int? da = listKulinerNusantara.length;
  static const double _itemHeight = 170;
  static final int _itemCount =
      handArtCollection.length * 3; // Tinjau Lagi buat deklarasi static const
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: ClickableListWheelScrollView(
          scrollController: _scrollController,
          itemHeight: _itemHeight,
          itemCount: _itemCount,
          onItemTapCallback: (index) {
            print("onItemTapCallback index: $index");
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return detailMobile();
            }));
          },
          child: ListWheelScrollView(
            controller: _scrollController,
            itemExtent: _itemHeight,
            physics: FixedExtentScrollPhysics(),
            diameterRatio: 1.5,
            perspective: 0.002,
            offAxisFraction: -1.5,
            children: buttonList,
          ),
        ),
      ),
    );
  }
}

class RandomIntLoop {
  static int x = 0;
  static int getRandomInt() {
    x = Random().nextInt(handArtCollection.length);
    return x;
  }
}

List<Widget> buttonList = [
  for (var i = 0; i < handArtCollection.length * 3; i++)
    PhysicalModel(
      color: const Color.fromARGB(0, 170, 158, 52),
      elevation: 30.0,
      borderRadius: BorderRadius.circular(40.0),
      shadowColor: const Color.fromARGB(144, 170, 158, 52),
      child: Image.asset(
        handArtCollection[RandomIntLoop.getRandomInt()].buttonImage,
        width: 300,
        height: 170,
      ),
    ),
];
