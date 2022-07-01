import 'package:flutter/material.dart';
import 'package:clickable_list_wheel_view/clickable_list_wheel_widget.dart';
import 'package:flutter_art_app/screen/main-screen.dart';
import 'dart:ui';

class welcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('assd : ${MediaQuery.of(context).size.width}'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return MobileWlcomeScreen();
          } else if (constraints.maxWidth <= 1200) {
            return MediumWelcomeScreen();
          } else {
            return WideWelcomeScreen();
          }
        },
      ),
    );
  }
}

class MobileWlcomeScreen extends StatelessWidget {
  // const MobileScreen({Key? key}) : super(key: key);
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

class MediumWelcomeScreen extends StatelessWidget {
  // const WideWelcomeScreen({Key? key}) : super(key: key);
  final _scrollController = FixedExtentScrollController();
  // int? da = listKulinerNusantara.length;
  static const double _itemHeight = 500;
  static const int _itemCount = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                  color: Colors.black,
                  child: Image.asset(
                    'images/welcome/mid.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Expanded(
              // color: Colors.black,
              child: Center(
                child: ClickableListWheelScrollView(
                  scrollController: _scrollController,
                  itemHeight: _itemHeight,
                  itemCount: _itemCount,
                  onItemTapCallback: (index) {
                    print("onItemTapCallback index: $index");
                    if (index == 3) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
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
            ),
          ],
        ),
      ),
    );
  }
}

class WideWelcomeScreen extends StatelessWidget {
  // const WideWelcomeScreen({Key? key}) : super(key: key);
  final _scrollController = FixedExtentScrollController();
  // int? da = listKulinerNusantara.length;
  static const double _itemHeight = 500;
  static const int _itemCount = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Image.asset(
                'images/welcome/wide.png',
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              // color: Colors.black,
              child: Center(
                child: ClickableListWheelScrollView(
                  scrollController: _scrollController,
                  itemHeight: _itemHeight,
                  itemCount: _itemCount,
                  onItemTapCallback: (index) {
                    print("onItemTapCallback index: $index");
                    if (index == 3) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const MainScreen();
                      }));
                    }
                  },
                  child: ListWheelScrollView(
                    controller: _scrollController,
                    itemExtent: _itemHeight,
                    physics: const FixedExtentScrollPhysics(),
                    diameterRatio: 1.5,
                    // perspective: 0.002,
                    children: wideHello,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> hello = [
  PhysicalModel(
    color: const Color.fromARGB(0, 170, 158, 52),
    elevation: 50.0,
    borderRadius: BorderRadius.circular(40.0),
    shadowColor: const Color.fromARGB(144, 170, 158, 52),
    child: Image.asset(
      'images/welcome/Welcome1.png',
      width: 500,
      height: 700,
    ),
  ),
  PhysicalModel(
    color: const Color.fromARGB(0, 170, 158, 52),
    elevation: 50.0,
    borderRadius: BorderRadius.circular(40.0),
    shadowColor: const Color.fromARGB(144, 170, 158, 52),
    child: Image.asset(
      'images/welcome/Welcome2.png',
      width: 500,
      height: 700,
    ),
  ),
  PhysicalModel(
    color: const Color.fromARGB(0, 170, 158, 52),
    elevation: 50.0,
    borderRadius: BorderRadius.circular(40.0),
    shadowColor: const Color.fromARGB(144, 170, 158, 52),
    child: Image.asset(
      'images/welcome/Welcome3.png',
      width: 500,
      height: 700,
    ),
  ),
  PhysicalModel(
    color: const Color.fromARGB(0, 170, 158, 52),
    elevation: 50.0,
    borderRadius: BorderRadius.circular(40.0),
    shadowColor: const Color.fromARGB(144, 170, 158, 52),
    child: Image.asset(
      'images/welcome/Welcome4.png',
      width: 500,
      height: 700,
    ),
  ),
];

List<Widget> wideHello = [
  PhysicalModel(
    color: const Color.fromARGB(0, 170, 158, 52),
    elevation: 50.0,
    borderRadius: BorderRadius.circular(40.0),
    shadowColor: const Color.fromARGB(144, 170, 158, 52),
    child: Image.asset(
      'images/welcome/Welcome1 Wide.png',
      width: 500,
      height: 700,
    ),
  ),
  PhysicalModel(
    color: const Color.fromARGB(0, 170, 158, 52),
    elevation: 50.0,
    borderRadius: BorderRadius.circular(40.0),
    shadowColor: const Color.fromARGB(144, 170, 158, 52),
    child: Image.asset(
      'images/welcome/Welcome2 Wide.png',
      width: 500,
      height: 700,
    ),
  ),
  PhysicalModel(
    color: const Color.fromARGB(0, 170, 158, 52),
    elevation: 50.0,
    borderRadius: BorderRadius.circular(40.0),
    shadowColor: const Color.fromARGB(144, 170, 158, 52),
    child: Image.asset(
      'images/welcome/Welcome3 Wide.png',
      width: 500,
      height: 700,
    ),
  ),
  PhysicalModel(
    color: const Color.fromARGB(0, 170, 158, 52),
    elevation: 50.0,
    borderRadius: BorderRadius.circular(40.0),
    shadowColor: const Color.fromARGB(144, 170, 158, 52),
    child: Image.asset(
      'images/welcome/Welcome4 Wide.png',
      width: 500,
      height: 700,
    ),
  ),
];
