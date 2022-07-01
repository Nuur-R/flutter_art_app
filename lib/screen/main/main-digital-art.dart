import 'dart:math';

import 'package:flutter/material.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
import 'package:flutter_art_app/models/digital-art-model.dart';
import 'package:flutter_art_app/screen/detail/detail-digital-art.dart';

class MainDigitalArt extends StatelessWidget {
  final _scrollController = FixedExtentScrollController();
  // final double height;

  // int? da = listKulinerNusantara.length;
  final int listSelector;
  static const double _itemHeight = 170;
  static final int _itemCount = digitalArtCollection.length * 3;
  MainDigitalArt({required this.listSelector});
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
            final DigitalArtData digitalArt = digitalArtCollection[index];
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailMobile(digitalArt: digitalArt);
            }));
          },
          child: ListWheelScrollView(
            controller: _scrollController,
            itemExtent: _itemHeight,
            physics: FixedExtentScrollPhysics(),
            diameterRatio: 1.5,
            perspective: 0.002,
            offAxisFraction: 1.5,
            children: list[listSelector],
          ),
        ),
      ),
    );
  }
}

List list = [buttonList, midButtonList, wideButtonList];
List<Widget> buttonList = [
  for (var i = 0; i < digitalArtCollection.length; i++)
    PhysicalModel(
      color: const Color.fromARGB(0, 170, 158, 52),
      elevation: 30.0,
      borderRadius: BorderRadius.circular(40.0),
      shadowColor: const Color.fromARGB(144, 170, 158, 52),
      child: Image.asset(
        digitalArtCollection[i].buttonImage,
        width: 300,
        height: 170,
      ),
    ),
];
List<Widget> midButtonList = [
  for (var i = 0; i < digitalArtCollection.length; i++)
    PhysicalModel(
      color: const Color.fromARGB(0, 170, 158, 52),
      elevation: 30.0,
      borderRadius: BorderRadius.circular(40.0),
      shadowColor: const Color.fromARGB(144, 170, 158, 52),
      child: Image.asset(
        digitalArtCollection[i].buttonImage,
        width: 400,
        height: 250,
      ),
    ),
];
List<Widget> wideButtonList = [
  for (var i = 0; i < digitalArtCollection.length; i++)
    PhysicalModel(
      color: const Color.fromARGB(0, 170, 158, 52),
      elevation: 30.0,
      borderRadius: BorderRadius.circular(40.0),
      shadowColor: const Color.fromARGB(144, 170, 158, 52),
      child: Image.asset(
        digitalArtCollection[i].buttonImage,
        width: 500,
        height: 380,
      ),
    ),
];
