import 'dart:developer';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:quickmart/utills/product.dart';
import 'package:quickmart/main.dart';
import 'package:quickmart/utills/routes.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QuickMart",
          style: TextStyle(
            color: Colors.black,
            fontSize: h * 0.030,
          ),
        ),
        actions: [
          const Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
          ),
          // IconButton(
          //   onPressed: () {
          //     Navigator.of(context).pushNamed(AllRoutes.cart_page);
          //   },
          //   icon: const Icon(
          //     Icons.shopping_cart,
          //     color: Colors.black,
          //   ),
          // ),
          SizedBox(
           width: w*0.025,
          ),
          const CircleAvatar(
            backgroundColor: Colors.transparent,
            // child: Image(
            //   image: NetworkImage(
            //       "https://manofmany.com/wp-content/uploads/2019/04/David-Gandy.jpg"),
            //   fit: BoxFit.fill,
            // ),
            foregroundImage: NetworkImage(
              "https://manofmany.com/wp-content/uploads/2019/04/David-Gandy.jpg",
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: h * 0.20,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://img.freepik.com/premium-photo/3d-illustration-purple-retro-headphones-purple-isolated-background-white-lights-headphone-icon-illustration_116124-7777.jpg"),
                      fit: BoxFit.fill),
                ),
                alignment: const AlignmentDirectional(-0.8, 1),
                child: Container(
                  height: h * 0.1,
                  width: w * 0.5,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: h * 0.025,
                        width: w * 0.15,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "30% off",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: h * 0.016,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.0040,
                      ),
                      Text(
                        "On Headphones",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: h * 0.015,
                            letterSpacing: 2),
                      ),
                      SizedBox(
                        height: h * 0.002,
                      ),
                      Text(
                        "Exclusive Sales",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: h * 0.025,
                            letterSpacing: 1),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.025,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: h * 0.025,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "SEE ALL",
                    style: TextStyle(
                      fontSize: h * 0.015,
                      color: Colors.cyan,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: h * 0.025,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                // child: Row(
                //   children: Category.map(
                //     (e) => GestureDetector(
                //       onTap: () {
                //         setState(() {
                //           cat = e;
                //           log(cat);
                //         });
                //       },
                //       child: Container(
                //         height: h * 0.055,
                //         margin: const EdgeInsets.all(5),
                //         padding: const EdgeInsets.all(10),
                //         decoration: BoxDecoration(
                //           color: (cat == e)
                //               ? const Color(0xff000000)
                //               : const Color(0xfff2f2f2),
                //           borderRadius: BorderRadius.circular(h * 0.015),
                //         ),
                //         alignment: Alignment.center,
                //         child: Text(
                //           e.toString().replaceFirst(
                //                 e[0],
                //                 e[0].toString().toUpperCase(),
                //               ),
                //           style: TextStyle(
                //             fontSize: h * 0.02,
                //             color: (cat == e) ? Colors.white : Colors.black,
                //             fontWeight:
                //                 (cat == e) ? FontWeight.bold : FontWeight.w400,
                //             letterSpacing: 1,
                //           ),
                //         ),
                //       ),
                //     ),
                //   ).toList(),
                // ),
                // aama category nay aave aama product list j rakhva nu thase.
                child: Row(
                  children: [
                    ...images
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pushNamed(
                                    AllRoutes.subproduct,
                                    arguments: e);
                              });
                            },
                            child: Container(
                              height: h * 0.15,
                              width: w * 0.30,
                              margin: const EdgeInsets.all(5),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(h * 0.015),
                              ),
                              child: // Column(
                                  //   children: [
                                  //     Expanded(
                                  //       flex: 4,
                                  //       child: Container(
                                  //         child: Image(
                                  //           image: NetworkImage(
                                  //             e,
                                  //           ),
                                  //         ),
                                  //       ),
                                  //     ),
                                  //     Expanded(
                                  //       child: Container(
                                  //         color: Colors.blue,
                                  //       ),
                                  //     ),
                                  //   ],
                                  // ),
                                  Image(
                                image: NetworkImage(e),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Products",
                    style: TextStyle(
                      fontSize: h * 0.025,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "SEE ALL",
                    style: TextStyle(
                      fontSize: h * 0.015,
                      color: Colors.cyan,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...product
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                  AllRoutes.detail_page,
                                  arguments: e);
                            },
                            child: Container(
                              height: h * 0.27,
                              width: w * 0.40,
                              margin: const EdgeInsets.all(5),
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                          style: TextStyle(fontSize: h * 0.023),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        SizedBox(
                                          height: h * 0.01,
                                        ),
                                        Text(
                                          "${e['price']} \$",
                                          style: TextStyle(
                                              fontSize: h * 0.020,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.details, title: 'All Product'),
          TabItem(icon: Icons.favorite, title: 'Wishlist'),
          TabItem(icon: Icons.add_shopping_cart, title: 'My Cart'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        backgroundColor: Colors.black,
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
