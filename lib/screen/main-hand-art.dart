import 'package:flutter/material.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
import 'package:flutter_art_app/models/hand-art-model.dart';
import 'package:flutter_art_app/screen/detail.dart';

class MainHandArt extends StatelessWidget {
  final _scrollController = FixedExtentScrollController();
  // int? da = listKulinerNusantara.length;
  static const double _itemHeight = 170;
  static const int _itemCount = 7; // Tinjau Lagi buat deklarasi static const
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
          },
          child: ListWheelScrollView(
            controller: _scrollController,
            itemExtent: _itemHeight,
            physics: FixedExtentScrollPhysics(),
            diameterRatio: 1.5,
            perspective: 0.002,
            offAxisFraction: -1.5,
            children: ButtonList,
          ),
        ),
      ),
    );
  }
}

List<Widget> ButtonList = [
  for (var i = 0; i < handArtCollection.length; i++)
    PhysicalModel(
      color: Color.fromARGB(0, 170, 158, 52),
      elevation: 30.0,
      borderRadius: BorderRadius.circular(40.0),
      shadowColor: Color.fromARGB(144, 170, 158, 52),
      child: Image.asset(
        handArtCollection[i].buttonImage,
        width: 300,
        height: 170,
      ),
    ),
];
