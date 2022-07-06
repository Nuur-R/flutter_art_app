import 'dart:math';

import 'package:flutter/material.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
// import 'package:flutter_art_app/models/hand-art-model.dart';
import 'package:flutter_art_app/models/hand-art-model-network.dart';
import 'package:flutter_art_app/screen/detail/detail-hand-art.dart';

class MainHandArt extends StatelessWidget {
  final _scrollController = FixedExtentScrollController();
  // int? da = listKulinerNusantara.length;
  final int listSelector;
  static const double _itemHeight = 170;
  static final int _itemCount = handArtCollection.length;
  MainHandArt({required this.listSelector});

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
              // return ListTileSelectExample();
            }));
            print("onItemTapCallback index: $index");
          },
          child: ListWheelScrollView(
            controller: _scrollController,
            itemExtent: _itemHeight,
            physics: FixedExtentScrollPhysics(),
            diameterRatio: 1.5,
            perspective: 0.002,
            offAxisFraction: -1.5,
            children: list[listSelector],
          ),
        ),
      ),
    );
  }
}

List list = [buttonList, midButtonList, wideButtonList];
List<Widget> buttonList = [
  for (var i = 0; i < handArtCollection.length; i++)
    PhysicalModel(
      color: const Color.fromARGB(0, 170, 158, 52),
      elevation: 30.0,
      borderRadius: BorderRadius.circular(40.0),
      shadowColor: const Color.fromARGB(144, 170, 158, 52),
      child: Image.network(
        handArtCollection[i].buttonImage,
        width: 300,
        height: 170,
      ),
    ),
];
List<Widget> midButtonList = [
  for (var i = 0; i < handArtCollection.length; i++)
    PhysicalModel(
      color: const Color.fromARGB(0, 170, 158, 52),
      elevation: 30.0,
      borderRadius: BorderRadius.circular(40.0),
      shadowColor: const Color.fromARGB(144, 170, 158, 52),
      child: Image.network(
        handArtCollection[i].buttonImage,
        width: 400,
        height: 250,
      ),
    ),
];
List<Widget> wideButtonList = [
  for (var i = 0; i < handArtCollection.length; i++)
    PhysicalModel(
      color: const Color.fromARGB(0, 170, 158, 52),
      elevation: 30.0,
      borderRadius: BorderRadius.circular(40.0),
      shadowColor: const Color.fromARGB(144, 170, 158, 52),
      child: Image.network(
        handArtCollection[i].buttonImage,
        width: 500,
        height: 380,
      ),
    ),
];
