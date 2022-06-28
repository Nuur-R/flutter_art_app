import 'dart:math';

import 'package:flutter/material.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
import 'package:flutter_art_app/models/hand-art-model.dart';
import 'package:flutter_art_app/screen/detail/detail-hand-art.dart';

class MainHandArt extends StatefulWidget {
  // const MainHandArt({super.key, required this.handArtCollection});
  static const double _itemHeight = 170;
  static final int _itemCount = handArtCollection.length * 3;

  @override
  State<MainHandArt> createState() => _MainHandArtState();
}

class _MainHandArtState extends State<MainHandArt> {
  final _scrollController = FixedExtentScrollController();

  // final List<String> handArtCollection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: ClickableListWheelScrollView(
          scrollController: _scrollController,
          itemHeight: MainHandArt._itemHeight,
          itemCount: MainHandArt._itemCount,
          onItemTapCallback: (index) {
            final HandArtData handArt = handArtCollection[index];
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailMobile(handArt: handArt);
            }));
            print("onItemTapCallback index: $index");
          },
          child: ListWheelScrollView(
            controller: _scrollController,
            itemExtent: MainHandArt._itemHeight,
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

List<Widget> buttonList = [
  for (var i = 0; i < handArtCollection.length; i++)
    PhysicalModel(
      color: const Color.fromARGB(0, 170, 158, 52),
      elevation: 30.0,
      borderRadius: BorderRadius.circular(40.0),
      shadowColor: const Color.fromARGB(144, 170, 158, 52),
      child: Image.asset(
        handArtCollection[i].buttonImage,
        width: 300,
        height: 170,
      ),
    ),
];
