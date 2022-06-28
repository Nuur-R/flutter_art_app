import 'package:flutter/material.dart';
import 'package:flutter_art_app/models/photo-art-model.dart';
import 'package:flutter_art_app/screen/main-screen.dart';

class DetailMobile extends StatelessWidget {
  // const DetailMobile({Key? key}) : super(key: key);
  final PhotoArtData photoArt;
  const DetailMobile({required this.photoArt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(photoArt.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Kembali',
        child: Icon(Icons.arrow_back_outlined),
      ),
    );
  }
}
