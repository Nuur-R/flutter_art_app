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
      body: Container(
        color: Colors.black,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: photoArt.imagePaths.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  SizedBox(
                    width: 350,
                    height: 350,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: PhysicalModel(
                          color: const Color.fromARGB(0, 170, 158, 52),
                          elevation: 30.0,
                          shadowColor: const Color.fromARGB(200, 170, 158, 52),
                          child: Image.asset(photoArt.imagePaths[index])),
                    ),
                  ),
                ],
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(144, 170, 158, 52),
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Kembali',
        child:
            Icon(Icons.arrow_back, color: Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }
}
