import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:quickmart/utills/product.dart';
import 'package:quickmart/utills/routes.dart';
import 'package:quickmart/view/screens/home_page.dart';

class SubproductPage extends StatefulWidget {
  const SubproductPage({super.key});

  @override
  State<SubproductPage> createState() => _SubproductPageState();
}

class _SubproductPageState extends State<SubproductPage> {
  String CategoryImage = "https://freesvg.org/img/metalmarious_Laptop.png";

  @override
  Widget build(BuildContext context) {
    String cat = ModalRoute.of(context)!.settings.arguments as String;
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
              Navigator.of(context).popAndPushNamed('Home_page');
            },
          ),
          title: const Text(
            "products",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ...product.map(
                (e) => (e['category'] == cat)
                    ? Container(
                        height: h * 0.3,
                        width: w,
                        margin: const EdgeInsets.all(5),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context).pushNamed(
                                      AllRoutes.detail_page,
                                      arguments: e);
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Image(
                                    image: NetworkImage(e['image']),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                      )
                    : Container(),
              ),
            ].toList(),
          ),
        ),
      ),
    );
  }
}
