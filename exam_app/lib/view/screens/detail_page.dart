import 'dart:developer';

import 'package:exam_app/main.dart';
import 'package:exam_app/utills/products.dart';
import 'package:exam_app/utills/routes.dart';
import 'package:exam_app/view/screens/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).popAndPushNamed('AllRoutes.home_page');
            },
          ),
          title: const Text(
            "Product Details",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.cart_page);
              },
            ),
            SizedBox(
              width: w * 0.025,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(
                        data['image'],
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      bottom: BorderSide(color: Colors.black),
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(6),
                            height: h * 0.04,
                            decoration: BoxDecoration(
                              color: Color(0xff08e488),
                              borderRadius: BorderRadius.circular(h * 0.05),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Free Shipping",
                              style: TextStyle(
                                fontSize: h * 0.02,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        children: [
                          ActionChip(
                            avatar:
                                (likedProducts.contains(product.indexOf(data)))
                                    ? const Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      )
                                    : const Icon(Icons.favorite_border),
                            backgroundColor: Colors.yellow,
                            padding: EdgeInsets.all(6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(h * 0.05),
                            ),
                            label:
                                (!likedProducts.contains(product.indexOf(data)))
                                    ? const Text("Like")
                                    : const Text("UnLike"),
                            onPressed: () {
                              int index = product.indexOf(data);
                              log("$index");

                              likedProducts.contains(index)
                                  ? likedProducts.remove(index)
                                  : likedProducts.add(index);

                              log("$likedProducts");
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.015,
                      ),
                      Row(
                        children: [
                          Text(
                            data['title'],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: h * 0.03,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: w * 0.02,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.020,
                      ),
                      Text(
                        "\$ ${data['price']}",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: h * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        children: [
                          RatingBarIndicator(
                            rating: double.parse(data['rating'].toString()),
                            itemSize: h * 0.03,
                            itemCount: 5,
                            direction: Axis.horizontal,
                            textDirection: TextDirection.ltr,
                            unratedColor: Colors.black,
                            itemBuilder: (context, index) => const Icon(
                              Icons.star_outlined,
                              color: Color(0xffFFB001),
                            ),
                          ),
                          SizedBox(
                            width: w * 0.020,
                          ),
                          Text(
                            data['rating'].toString(),
                            style: TextStyle(
                                color: Colors.white, fontSize: h * 0.023),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.020,
                      ),
                      Text(
                        data['description'],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: h * 0.025,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(6),
                      height: h * 0.075,
                      width: w * 0.45,
                      decoration: BoxDecoration(
                        color: Color(0xff1f8bda),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                          fontSize: h * 0.025,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Ink(
                      decoration: BoxDecoration(
                        color: Color(0xff08e488),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: InkWell(
                        splashColor: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(h * 0.035),
                        onTap: () {
                          if (!addToCart.contains(data)) {
                            addToCart.add(data);
                          }
                          log(" ------ Add To Cart ------");
                          log("${addToCart}");
                          log("${addToCart.length}");
                          log("---------------------------");
                        },
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          height: h * 0.075,
                          width: w * 0.45,
                          alignment: Alignment.center,
                          child: Text(
                            "Add To Cart🛒",
                            style: TextStyle(
                              fontSize: h * 0.025,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
