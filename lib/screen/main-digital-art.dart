import 'package:flutter/material.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
import 'package:flutter_art_app/models/hand-art-model.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class MainDigitalArt extends StatefulWidget {
  static const double _itemHeight = 170;
  static const int _itemCount = 7;
  @override
  State<MainDigitalArt> createState() => _MainDigitalArtState();
}

class _MainDigitalArtState extends State<MainDigitalArt> {
  final _scrollController = FixedExtentScrollController();
  late InfiniteScrollController controller;
  int selectedIndex = 0;
  // Tinjau Lagi buat deklarasi static const
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ClickableListWheelScrollView(
        scrollController: _scrollController,
        itemHeight: MainDigitalArt._itemHeight,
        itemCount: MainDigitalArt._itemCount,
        onItemTapCallback: (index) {
          print("onItemTapCallback index: $index");
        },
        child: ListWheelScrollView(
          controller: _scrollController,
          itemExtent: MainDigitalArt._itemHeight,
          physics: FixedExtentScrollPhysics(),
          overAndUnderCenterOpacity: 0.5,
          diameterRatio: 1.5,
          perspective: 0.002,
          offAxisFraction: 0.5,
          children: ButtonList,
        ),
      )),
    );
  }
}

List<Widget> ButtonList = [
  for (var i = 0; i < handArtCollection.length; i++)
    Image.asset(handArtCollection[i].imageTitles),
];

// InfiniteCarousel.builder(
//           itemCount: 10,
//           itemExtent: 120,
//           center: true,
//           anchor: 0.0,
//           velocityFactor: 0.2,
//           onIndexChanged: (index) {},
//           controller: controller,
//           axisDirection: Axis.vertical,
//           loop: true,
//           itemBuilder: (context, itemIndex, realIndex) {