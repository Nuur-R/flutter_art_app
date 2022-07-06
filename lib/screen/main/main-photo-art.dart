import 'dart:math';

import 'package:flutter/material.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
// import 'package:flutter_art_app/models/photo-art-model.dart';
import 'package:flutter_art_app/models/photo-art-model-network.dart';
import 'package:flutter_art_app/screen/detail/detail-photo-art.dart';

class MainPhotoArt extends StatelessWidget {
  final _scrollController = FixedExtentScrollController();
  // int? da = listKulinerNusantara.length;
  static const double _itemHeight = 170;
  final int listSelector;
  static final int _itemCount = photoArtCollection.length;
  MainPhotoArt({required this.listSelector});
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
            final PhotoArtData digitalArt = photoArtCollection[index];
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailMobile(photoArt: digitalArt);
            }));
          },
          child: ListWheelScrollView(
            controller: _scrollController,
            itemExtent: _itemHeight,
            physics: FixedExtentScrollPhysics(),
            diameterRatio: 1.5,
            perspective: 0.002,
            offAxisFraction: 0.0,
            children: list[listSelector],
          ),
        ),
      ),
    );
  }
}

class RandomIntLoop {
  static int x = 0;
  static int getRandomInt() {
    x = Random().nextInt(photoArtCollection.length);
    return x;
  }
}

List list = [buttonList, midButtonList, wideButtonList];
List<Widget> buttonList = [
  for (var i = 0; i < photoArtCollection.length; i++)
    PhysicalModel(
      color: const Color.fromARGB(0, 170, 158, 52),
      elevation: 30.0,
      borderRadius: BorderRadius.circular(40.0),
      shadowColor: const Color.fromARGB(144, 170, 158, 52),
      child: Image.network(
        photoArtCollection[i].buttonImage,
        width: 300,
        height: 170,
      ),
    ),
];
List<Widget> midButtonList = [
  for (var i = 0; i < photoArtCollection.length; i++)
    PhysicalModel(
      color: const Color.fromARGB(0, 170, 158, 52),
      elevation: 30.0,
      borderRadius: BorderRadius.circular(40.0),
      shadowColor: const Color.fromARGB(144, 170, 158, 52),
      child: Image.network(
        photoArtCollection[i].buttonImage,
        width: 400,
        height: 250,
      ),
    ),
];
List<Widget> wideButtonList = [
  for (var i = 0; i < photoArtCollection.length; i++)
    PhysicalModel(
      color: const Color.fromARGB(0, 170, 158, 52),
      elevation: 30.0,
      borderRadius: BorderRadius.circular(40.0),
      shadowColor: const Color.fromARGB(144, 170, 158, 52),
      child: Image.network(
        photoArtCollection[i].buttonImage,
        width: 500,
        height: 380,
      ),
    ),
];
