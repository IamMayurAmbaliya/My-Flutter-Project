import 'package:flutter/material.dart';
import 'package:gallary_viewer_app/utills/product.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GallaryViewer(),
    ),
  );
}

class GallaryViewer extends StatefulWidget {
  const GallaryViewer({super.key});

  @override
  State<GallaryViewer> createState() => _GallaryViewerState();
}

class _GallaryViewerState extends State<GallaryViewer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xff222222),
          title: Text(
            "GALLARY VIEWER",
            style: TextStyle(
              fontSize: h * 0.030,
              letterSpacing: 3,
              color: Colors.white,
            ),
          ),
          elevation: 0,
          actions: [
            Icon(
              Icons.list,
              color: Colors.white,
              size: h * 0.040,
            ),
            SizedBox(
              width: w * 0.025,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: Product.map(
                (e) => Container(
                  margin: const EdgeInsets.all(5),
                  height: h * 0.45,
                  width: w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(e),
                    ),
                  ),
                ),
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
