import 'package:flutter/material.dart';
import 'package:flutter_art_app/models/digital-art-model.dart';
import 'package:flutter_art_app/screen/main-screen.dart';

class DetailMobile extends StatelessWidget {
  // const DetailMobile({Key? key}) : super(key: key);
  final DigitalArtData digitalArt;
  const DetailMobile({required this.digitalArt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return GridDetail(
              gridCount: 1,
              digitalArt: digitalArt,
            );
          } else if (constraints.maxWidth <= 1200) {
            return GridDetail(
              gridCount: 2,
              digitalArt: digitalArt,
            );
          } else {
            return GridDetail(
              gridCount: 3,
              digitalArt: digitalArt,
            );
          }
        },
      ),
    );
  }
}

class GridDetail extends StatefulWidget {
  // const DetailMobile({Key? key}) : super(key: key);
  final int gridCount;
  final DigitalArtData digitalArt;
  GridDetail({required this.digitalArt, required this.gridCount});

  @override
  State<GridDetail> createState() => _GridDetailState();
}

class _GridDetailState extends State<GridDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: GridView.count(
            crossAxisCount: widget.gridCount,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            // childAspectRatio: 10.5,
            padding: const EdgeInsets.all(8.0),
            children: widget.digitalArt.imagePaths.map((String path) {
              return Image.asset(path);
            }).toList()),
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
