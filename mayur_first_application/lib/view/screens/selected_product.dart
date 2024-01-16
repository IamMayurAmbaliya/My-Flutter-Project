import 'package:flutter/material.dart';
import 'package:mayur_first_application/utills/data.dart';

class SelectedProduct extends StatefulWidget {
  const SelectedProduct({super.key});

  @override
  State<SelectedProduct> createState() => _SelectedProductState();
}

class _SelectedProductState extends State<SelectedProduct> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "PRODUCTS",
          style: TextStyle(
            color: Colors.black,
            fontSize: h * 0.030,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...product
                  .map(
                    (e) => Container(
                      height: h * 0.40,
                      width: w,
                      margin: EdgeInsets.all(w * 0.02),
                      padding: EdgeInsets.all(h * 0.01),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 0.3,
                        ),
                        borderRadius: BorderRadius.circular(h * 0.025),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: h * 0.3,
                            width: w,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(h * 0.015),
                              image: DecorationImage(
                                image: NetworkImage(
                                  e['image'],
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: h * 0.015,
                          ),
                          Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                e['name'],
                                style: TextStyle(
                                  fontSize: h * 0.018,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: h * 0.015,
                              ),
                              Text(
                                "${e['price']}",
                                style: TextStyle(
                                  fontSize: h * 0.018,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          // SizedBox(height: h*0.015,),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
