import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quickmart/utills/routes.dart';
import 'package:quickmart/utills/product.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double discount = 0.0;
  double Totaldiscount = 0.0;
  double totalPrice = 0.0;
  double Subtotal = 0.0;

  calculateBill() {
    totalPrice = 0.0;
    Totaldiscount = 0.0;
    Subtotal = 0.0;
    addToCart.forEach((element) {
      discount =
          (element['price'] * (element['discountPercentage'] ?? 0.0)) / 100;
      log("Discount : $discount");
      totalPrice += (element['price'] - discount) * element['qty'];
      log("Total Price : $totalPrice");
      Subtotal += element['price'] * element['qty'];
      log("SubTotal : $Subtotal");
      Totaldiscount = (Totaldiscount + discount) * element['qty'];
      log("Total Discount : $Totaldiscount");
    });
  }

  @override
  void initState() {
    super.initState();
    calculateBill();
  }

  @override
  Widget build(BuildContext context) {
    String symbol = "\$";
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).popAndPushNamed('AllRoutes.detail_page');
            },
          ),
          title: const Text(
            "My Cart",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    AllRoutes.home_page, (route) => false);
              },
              icon: const Icon(
                Icons.home_filled,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: w * 0.025,
            )
          ],
        ),
        body: (addToCart.isEmpty)
            ? Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/cart_page/buy.png",
                    ),
                    Text(
                      "Your Cart is Empty.",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: h * 0.03,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Looks like you have not added anything in your cart.",
                      style: TextStyle(
                        fontSize: h * 0.018,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.005,
                    ),
                    Text(
                      "Go ahead and explore top categories.",
                      style: TextStyle(
                        fontSize: h * 0.018,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Ink(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(h * 0.03),
                      ),
                      child: InkWell(
                        splashColor: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(h * 0.03),
                        onTap: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              AllRoutes.home_page, (route) => false);
                        },
                        child: Container(
                          height: h * 0.1,
                          width: w,
                          alignment: Alignment.center,
                          child: Text(
                            "Explore Categories",
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
            : Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Expanded(
                      flex: 5,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            ...addToCart.map(
                              (e) => Container(
                                height: h * 0.16,
                                width: w,
                                margin: const EdgeInsets.all(5),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                e['image'],
                                              ),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Text(
                                                e['title'],
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: h * 0.025,
                                                ),
                                              ),
                                            ),
                                            // SizedBox(
                                            //   height: h * 0.01,
                                            // ),
                                            Expanded(
                                              child: Text(
                                                "\$ ${e['price']}",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: h * 0.02,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            // SizedBox(
                                            //   height: h * 0.01,
                                            // ),
                                            Expanded(
                                              child: Container(
                                                height: h * 0.035,
                                                width: w * 0.25,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black12),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          h * 0.01),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          if (e['qty'] <
                                                              e['stock']) {
                                                            e['qty']++;
                                                          }
                                                          calculateBill();
                                                        });
                                                      },
                                                      child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        child: const Icon(
                                                          Icons.add,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "${e['qty']}",
                                                      style: TextStyle(
                                                        fontSize: h * 0.025,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          if (e['qty'] > 1) {
                                                            e['qty']--;
                                                          } else {
                                                            addToCart.remove(e);
                                                          }
                                                          calculateBill();
                                                        });
                                                      },
                                                      child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        child: const Icon(
                                                          Icons.remove,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            addToCart.remove(e);
                                            calculateBill();
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(h * 0.02),
                                          ),
                                          alignment: Alignment.center,
                                          child: const Icon(
                                            Icons.delete,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.all(5),

                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(h * 0.02),
                        ),
                        padding: const EdgeInsets.all(8),
                        // color: Colors.red,
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order Information",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: h * 0.025,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Text(
                              "Selected Item    :  ${addToCart.length}",
                              style: TextStyle(
                                fontSize: h * 0.02,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              "SubTotal             :  ${Subtotal.toString().split('.')[0]}.${Subtotal.toString().split('.')[1][0]}${Subtotal.toString().split('.')[1][1]}",
                              style: TextStyle(
                                fontSize: h * 0.02,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              "Total Discount   :  ${Totaldiscount.toString().split('.')[0]}.${Totaldiscount.toString().split('.')[1][0]}${Totaldiscount.toString().split('.')[1][1]}",
                              style: TextStyle(
                                fontSize: h * 0.02,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              "Total Price          :  ${totalPrice.toString().split('.')[0]}.${totalPrice.toString().split('.')[1][0]}${totalPrice.toString().split('.')[1][1]}",
                              style: TextStyle(
                                fontSize: h * 0.02,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(h * 0.02),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Chechout (${addToCart.length})",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: h * 0.02),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
