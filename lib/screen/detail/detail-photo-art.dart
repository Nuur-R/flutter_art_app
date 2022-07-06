import 'package:flutter/material.dart';
// import 'package:flutter_art_app/models/photo-art-model.dart';
import 'package:flutter_art_app/models/photo-art-model-network.dart';
import 'package:flutter_art_app/screen/main-screen.dart';

class DetailMobile extends StatelessWidget {
  // const DetailMobile({Key? key}) : super(key: key);
  final PhotoArtData photoArt;
  const DetailMobile({required this.photoArt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return GridDetail(
              gridCount: 1,
              photoArt: photoArt,
            );
          } else if (constraints.maxWidth <= 1200) {
            return GridDetail(
              gridCount: 2,
              photoArt: photoArt,
            );
          } else {
            return GridDetail(
              gridCount: 3,
              photoArt: photoArt,
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
  final PhotoArtData photoArt;
  GridDetail({required this.photoArt, required this.gridCount});

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
            padding: const EdgeInsets.all(8.0),
            children: widget.photoArt.imagePaths.map((String path) {
              return Image.network(path);
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
