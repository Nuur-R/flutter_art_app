import 'package:flutter/material.dart';
import 'package:flutter_art_app/screen/main-screen.dart';

class detailMobile extends StatelessWidget {
  const detailMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Hello World'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Kembali',
        child: const Icon(Icons.arrow_back_outlined),
      ),
    );
  }
}
