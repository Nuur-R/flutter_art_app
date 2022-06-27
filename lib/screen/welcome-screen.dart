import 'package:flutter/material.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
import 'package:flutter_art_app/screen/main-screen.dart';
import 'dart:ui';

class welcomeScreen extends StatelessWidget {
  final _scrollController = FixedExtentScrollController();
  // int? da = listKulinerNusantara.length;
  static const double _itemHeight = 500;
  static const int _itemCount = 20;
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
            if (index == 3) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const MainScreen();
              }));
            }
          },
          child: ListWheelScrollView(
            controller: _scrollController,
            itemExtent: _itemHeight,
            physics: const FixedExtentScrollPhysics(),
            diameterRatio: 0.7,
            // perspective: 0.002,
            children: hello,
          ),
        ),
      ),
    );
  }
}

List<Widget> hello = [
  Image.asset(
    'images/welcome/Welcome1.png',
    width: 500,
    height: 700,
  ),
  Image.asset(
    'images/welcome/Welcome2.png',
    width: 500,
    height: 700,
  ),
  Image.asset(
    'images/welcome/Welcome3.png',
    width: 500,
    height: 700,
  ),
  Image.asset(
    'images/welcome/Welcome4.png',
    width: 500,
    height: 700,
  ),
];

List<Widget> test = [
  PhysicalModel(
    color: Colors.yellow.withOpacity(0.0),
    elevation: 10.0,
    shadowColor: Colors.yellow,
    child: Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 71, 109, 233),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      width: 300,
      // height: 1000,
      child: const Center(
        child: Text(
            'Kalau ada yang bilang..... \n\nkomputer bisa  bikin karya seni yang Epik....\nKira - kira percaya engga???',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
    ),
  ),
  PhysicalModel(
    color: Colors.yellow.withOpacity(0.0),
    elevation: 10.0,
    shadowColor: Colors.yellow,
    child: Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 247, 247),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      width: 300,
      child: const Center(
        child: Text('lorem123 dsaasd sdajkasddkj asdkjjkhasd kjasdhkjh kjsahd'),
      ),
    ),
  ),
  PhysicalModel(
    color: Colors.yellow.withOpacity(0.0),
    elevation: 10.0,
    shadowColor: Colors.yellow,
    child: Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 243, 181, 101),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      width: 300,
      height: 1000,
      child: const Center(
        child: Text('lorem123 dsaasd sdajkasddkj asdkjjkhasd kjasdhkjh kjsahd'),
      ),
    ),
  ),
  PhysicalModel(
    color: Colors.yellow.withOpacity(0.0),
    elevation: 10.0,
    shadowColor: Colors.yellow,
    child: Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 194, 43, 231),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      width: 300,
      child: const Center(
        child: Text('lorem123 dsaasd sdajkasddkj asdkjjkhasd kjasdhkjh kjsahd'),
      ),
    ),
  ),
];
