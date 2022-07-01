import 'package:flutter/material.dart';
import 'package:flutter_art_app/models/hand-art-model.dart';
import 'package:flutter_art_app/screen/main-screen.dart';

class DetailMobile extends StatelessWidget {
  // const DetailMobile({Key? key}) : super(key: key);
  final HandArtData handArt;
  const DetailMobile({required this.handArt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return GridDetail(
              gridCount: 1,
              handArt: handArt,
            );
          } else if (constraints.maxWidth <= 1200) {
            return GridDetail(
              gridCount: 2,
              handArt: handArt,
            );
          } else {
            return GridDetail(
              gridCount: 3,
              handArt: handArt,
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
  final HandArtData handArt;
  GridDetail({required this.handArt, required this.gridCount});

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
            // childAspectRatio: 1.5,
            padding: const EdgeInsets.all(8.0),
            children: widget.handArt.imagePaths.map((String path) {
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
