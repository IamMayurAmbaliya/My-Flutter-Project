import 'dart:developer';

import 'package:exam_app/main.dart';
import 'package:exam_app/utills/products.dart';
import 'package:exam_app/utills/routes.dart';
import 'package:exam_app/view/screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String cat = "All";

  @override
  void initState() {
    super.initState();
    if (!Category.contains("All")) {
      Category.insert(0, "All");
      log("$AllCategory");
      log("$Category");
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            "ElectroMart",
            style: TextStyle(
              fontSize: h * 0.025,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Container(
                  height: h * 0.2,
                  width: w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(h * 0.02),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://png.pngitem.com/pimgs/s/526-5268844_tv-fridge-washing-machine-hd-png-download.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.025,
                ),
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     children: [
                //       ...Category.map(
                //         (e) => GestureDetector(
                //           onTap: () {
                //             setState(
                //               () {
                //                 cat = e;
                //                 log(cat);
                //               },
                //             );
                //           },
                //           child: Container(
                //             padding: EdgeInsets.all(5),
                //             height: h * 0.045,
                //             decoration: BoxDecoration(
                //               color: (cat == e)
                //                   ? Color(0xffaa14f0)
                //                   : Color(0xfff2f2f2),
                //               borderRadius: BorderRadius.circular(10),
                //             ),
                //             alignment: Alignment.center,
                //             child: Text(
                //               e.toString().replaceFirst(
                //                     e[0],
                //                     e[0].toString().toUpperCase(),
                //                   ),
                //               style: TextStyle(
                //                 color: (cat == e) ? Colors.white : Colors.black,
                //                 fontWeight: (cat == e)
                //                     ? FontWeight.bold
                //                     : FontWeight.w400,
                //                 letterSpacing: 1,
                //               ),
                //             ),
                //           ),
                //         ),
                //       ).toList(),
                //     ],
                //   ),
                // ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: Category.map(
                      (e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            cat = e;
                            log(cat);
                          });
                        },
                        child: Container(
                          height: h * 0.05,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: (cat == e)
                                ? const Color(0xffaa14f0)
                                : Color(0xfff2f2f2),
                            borderRadius: BorderRadius.circular(h * 0.015),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            e.toString().replaceFirst(
                                e[0], e[0].toString().toUpperCase()),
                            style: TextStyle(
                              fontSize: h * 0.02,
                              color: (cat == e) ? Colors.white : Colors.black,
                              fontWeight: (cat == e)
                                  ? FontWeight.bold
                                  : FontWeight.w400,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ).toList(),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...product
                          .map(
                            (e) => (cat == e['category'])
                                ? GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(
                                          Routes.detail_page,
                                          arguments: e);
                                    },
                                    child: Container(
                                      height: h * 0.43,
                                      width: w * 0.6,
                                      margin: const EdgeInsets.all(12),
                                      padding: const EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              alignment: Alignment.center,
                                              child: Image(
                                                image: NetworkImage(e['image']),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${e['title']}",
                                                  style: TextStyle(
                                                      fontSize: h * 0.023),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                SizedBox(
                                                  height: h * 0.01,
                                                ),
                                                Text(
                                                  "${e['price']} \$",
                                                  style: TextStyle(
                                                      fontSize: h * 0.020,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : (cat == "All")
                                    ? GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).pushNamed(
                                              Routes.detail_page,
                                              arguments: e);
                                        },
                                        child: Container(
                                          height: h * 0.43,
                                          width: w * 0.6,
                                          margin: const EdgeInsets.all(12),
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(14),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Image(
                                                    image: NetworkImage(
                                                        e['image']),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "${e['title']}",
                                                      style: TextStyle(
                                                          fontSize: h * 0.023),
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    SizedBox(
                                                      height: h * 0.01,
                                                    ),
                                                    Text(
                                                      "${e['price']} \$",
                                                      style: TextStyle(
                                                          fontSize: h * 0.020,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    : Container(),
                          )
                          .toList()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
